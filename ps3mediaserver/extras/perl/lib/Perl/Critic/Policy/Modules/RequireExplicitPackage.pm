##############################################################################
#      $URL: http://perlcritic.tigris.org/svn/perlcritic/branches/Perl-Critic-1.109/lib/Perl/Critic/Policy/Modules/RequireExplicitPackage.pm $
#     $Date: 2010-08-29 20:53:20 -0500 (Sun, 29 Aug 2010) $
#   $Author: clonezone $
# $Revision: 3911 $
##############################################################################

package Perl::Critic::Policy::Modules::RequireExplicitPackage;

use 5.006001;
use strict;
use warnings;
use Readonly;

use Perl::Critic::Utils qw{ :severities :classification };
use base 'Perl::Critic::Policy';

our $VERSION = '1.109';

#-----------------------------------------------------------------------------

Readonly::Scalar my $EXPL => q{Violates encapsulation};
Readonly::Scalar my $DESC => q{Code not contained in explicit package};

#-----------------------------------------------------------------------------

sub supported_parameters {
    return (
        {
            name           => 'exempt_scripts',
            description    => q{Don't require programs to contain a package statement.},
            default_string => '1',
            behavior       => 'boolean',
        },
    );
}

sub default_severity { return $SEVERITY_HIGH  }
sub default_themes   { return qw( core bugs ) }
sub applies_to       { return 'PPI::Document' }

sub default_maximum_violations_per_document { return 1; }

#-----------------------------------------------------------------------------

sub prepare_to_scan_document {
    my ( $self, $document ) = @_;

    return ! $self->{_exempt_scripts} || $document->is_module();
}

sub violates {
    my ( $self, $elem, $doc ) = @_;

    # Find the first 'package' statement
    my $package_stmnt = $doc->find_first( 'PPI::Statement::Package' );
    my $package_line = $package_stmnt ? $package_stmnt->location()->[0] : undef;

    # Find all statements that aren't 'package' statements
    my $stmnts_ref = $doc->find( 'PPI::Statement' );
    return if !$stmnts_ref;
    my @non_packages = grep { !$_->isa('PPI::Statement::Package') } @{$stmnts_ref};
    return if !@non_packages;

    # If the 'package' statement is not defined, or the other
    # statements appear before the 'package', then it violates.

    my @viols = ();
    for my $stmnt ( @non_packages ) {
        my $stmnt_line = $stmnt->location()->[0];
        if ( (! defined $package_line) || ($stmnt_line < $package_line) ) {
            push @viols, $self->violation( $DESC, $EXPL, $stmnt );
        }
    }

    return @viols;
}

1;

__END__

#-----------------------------------------------------------------------------

=pod

=head1 NAME

Perl::Critic::Policy::Modules::RequireExplicitPackage - Always make the C<package> explicit.


=head1 AFFILIATION

This Policy is part of the core L<Perl::Critic|Perl::Critic>
distribution.


=head1 DESCRIPTION

In general, the first statement of any Perl module or library should
be a C<package> statement.  Otherwise, all the code that comes before
the C<package> statement is getting executed in the caller's package,
and you have no idea who that is.  Good encapsulation and common
decency require your module to keep its innards to itself.

There are some valid reasons for not having a C<package> statement at
all.  But make sure you understand them before assuming that you
should do it too.

The maximum number of violations per document for this policy defaults
to 1.



=head1 CONFIGURATION

As for programs, most people understand that the default package is
C<main>, so this Policy doesn't apply to files that begin with a perl
shebang.  If you want to require an explicit C<package> declaration in
all files, including programs, then add the following to your
F<.perlcriticrc> file

    [Modules::RequireExplicitPackage]
    exempt_scripts = 0


=head1 IMPORTANT CHANGES

This policy was formerly called C<ProhibitUnpackagedCode> which
sounded a bit odd.  If you get lots of "Cannot load policy module"
errors, then you probably need to change C<ProhibitUnpackagedCode> to
C<RequireExplicitPackage> in your F<.perlcriticrc> file.


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
