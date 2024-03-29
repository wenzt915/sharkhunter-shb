##############################################################################
#      $URL: http://perlcritic.tigris.org/svn/perlcritic/trunk/distributions/PPIx-Utilities/lib/PPIx/Utilities/Exception/Bug.pm $
#     $Date: 2010-03-14 17:05:21 -0500 (Sun, 14 Mar 2010) $
#   $Author: clonezone $
# $Revision: 3789 $
##############################################################################

package PPIx::Utilities::Exception::Bug;

use 5.006001;
use strict;
use warnings;

our $VERSION = '1.000001';


use Exception::Class (
    'PPIx::Utilities::Exception::Bug' => {
        isa         => 'Exception::Class::Base',
        description => 'A bug in either PPIx::Utilities or PPI.',
    },
);


1;

__END__


=pod

=for stopwords

=head1 NAME

PPIx::Utilities::Exception::Bug - A problem identified by L<PPIx::Utilities|PPIx::Utilities>.

=head1 VERSION

This document describes PPIx::Utilities::Exception::Bug version 1.0.1.


=head1 DESCRIPTION

This represents a bug in either this module or in L<PPI>.  Something that
should never have happened, did happen.


=head1 METHODS

None other than those inherited from L<Exception::Class>.


=head1 AUTHOR

Elliot Shank <perl@galumph.com>


=head1 COPYRIGHT

Copyright (c) 2010 Elliot Shank.  All rights reserved.

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
