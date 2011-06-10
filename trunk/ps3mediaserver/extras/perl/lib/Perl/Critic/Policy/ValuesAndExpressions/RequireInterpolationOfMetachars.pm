##############################################################################
#      $URL: http://perlcritic.tigris.org/svn/perlcritic/branches/Perl-Critic-1.109/lib/Perl/Critic/Policy/ValuesAndExpressions/RequireInterpolationOfMetachars.pm $
#     $Date: 2010-08-29 20:53:20 -0500 (Sun, 29 Aug 2010) $
#   $Author: clonezone $
# $Revision: 3911 $
##############################################################################

package Perl::Critic::Policy::ValuesAndExpressions::RequireInterpolationOfMetachars;

use 5.006001;
use strict;
use warnings;

use Readonly;

use Email::Address;

use Perl::Critic::Utils qw< :booleans :characters :severities >;
use base 'Perl::Critic::Policy';

#-----------------------------------------------------------------------------

our $VERSION = '1.109';

#-----------------------------------------------------------------------------

Readonly::Scalar my $DESC => q<String *may* require interpolation>;
Readonly::Scalar my $EXPL => [ 51 ];

#-----------------------------------------------------------------------------

sub supported_parameters {
    return (
        {
            name            => 'rcs_keywords',
            description     => 'RCS keywords to ignore in potential interpolation.',
            default_string  => $EMPTY,
            behavior        => 'string list',
        },
    );
}

sub default_severity     { return $SEVERITY_LOWEST      }
sub default_themes       { return qw(core pbp cosmetic) }

sub applies_to           {
    return qw< PPI::Token::Quote::Single PPI::Token::Quote::Literal >;
}

#-----------------------------------------------------------------------------

sub initialize_if_enabled {
    my ($self, $config) = @_;

    my $rcs_keywords = $self->{_rcs_keywords};
    my @rcs_keywords = keys %{$rcs_keywords};

    if (@rcs_keywords) {
        my $rcs_regexes = [ map { qr/ \$ $_ [^\n\$]* \$ /xms } @rcs_keywords ];
        $self->{_rcs_regexes} = $rcs_regexes;
    }

    return $TRUE;
}

sub violates {
    my ( $self, $elem, undef ) = @_;

    # The string() method strips off the quotes
    my $string = $elem->string();
    return if not _needs_interpolation($string);
    return if _looks_like_email_address($string);
    return if _looks_like_use_vars($elem);

    my $rcs_regexes = $self->{_rcs_regexes};
    return if $rcs_regexes and _contains_rcs_variable($string, $rcs_regexes);

    return $self->violation( $DESC, $EXPL, $elem );
}

#-----------------------------------------------------------------------------

sub _needs_interpolation {
    my ($string) = @_;

    return
            # Contains a $ or @ not followed by "{}".
            $string =~ m< [\$\@] (?! [{] [}] ) \S+ >xms
            # Contains metachars
        ||  $string =~ m<
                (?: \A | [^\\] )
                (?: \\{2} )*
                \\ [tnrfae0xcNLuLUEQ]
            >xms;
}

#-----------------------------------------------------------------------------

sub _looks_like_email_address {
    my ($string) = @_;

    return if index ($string, q<@>) < 0;
    return if $string =~ m< \W \@ >xms;
    return if $string =~ m< \A \@ \w+ \b >xms;

    return $string =~ $Email::Address::addr_spec;
}

#-----------------------------------------------------------------------------

sub _contains_rcs_variable {
    my ($string, $rcs_regexes) = @_;

    foreach my $regex ( @{$rcs_regexes} ) {
        return $TRUE if $string =~ m/$regex/xms;
    }

    return;
}

#-----------------------------------------------------------------------------

sub _looks_like_use_vars {
    my ($elem) = @_;

    my $string = $elem->string();

    my $statement = $elem;
    while ( not $statement->isa('PPI::Statement::Include') ) {
        $statement = $statement->parent() or return;
    }

    return if $statement->type() ne q<use>;
    return $statement->module() eq q<vars>;
}

1;

__END__

#-----------------------------------------------------------------------------

=pod

=for stopwords RCS

=head1 NAME

Perl::Critic::Policy::ValuesAndExpressions::RequireInterpolationOfMetachars - Warns that you might have used single quotes when you really wanted double-quotes.


=head1 AFFILIATION

This Policy is part of the core L<Perl::Critic|Perl::Critic>
distribution.


=head1 DESCRIPTION

This policy warns you if you use single-quotes or C<q//> with a string
that has unescaped metacharacters that may need interpolation. Its
hard to know for sure if a string really should be interpolated
without looking into the symbol table.  This policy just makes an
educated guess by looking for metacharacters and sigils which usually
indicate that the string should be interpolated.


=head2 Exceptions

=over

=item *

Variable names to C<use vars>:

    use vars '$x';          # ok
    use vars ('$y', '$z');  # ok
    use vars qw< $a $b >;   # ok


=item *

Things that look like e-mail addresses:

    print 'john@foo.com';           # ok
    $address = 'suzy.bar@baz.net';  # ok

=back


=head1 CONFIGURATION

The C<rcs_keywords> option allows you to stop this policy from complaining
about things that look like RCS variables, for example, in deriving values for
C<$VERSION> variables.

For example, if you've got code like

    our ($VERSION) = (q<$Revision: 3911 $> =~ m/(\d+)/mx);

You can specify

    [ValuesAndExpressions::RequireInterpolationOfMetachars]
    rcs_keywords = Revision

in your F<.perlcriticrc> to provide an exemption.


=head1 NOTES

Perl's own C<warnings> pragma also warns you about this.


=head1 SEE ALSO

L<Perl::Critic::Policy::ValuesAndExpressions::ProhibitInterpolationOfLiterals|Perl::Critic::Policy::ValuesAndExpressions::ProhibitInterpolationOfLiterals>


=head1 AUTHOR

Jeffrey Ryan Thalhammer <jeff@imaginative-software.com>


=head1 COPYRIGHT

Copyright (c) 2005-2010 Imaginative Software Systems.  All rights reserved.

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.  The full text of this license
can be found in the LICENSE file included with this module.

=cut

# Local Variables:
#   mode: cperl
#   cperl-indent-level: 4
#   fill-column: 78
#   indent-tabs-mode: nil
#   c-indentation-style: bsd
# End:
# ex: set ts=8 sts=4 sw=4 tw=78 ft=perl expandtab shiftround :