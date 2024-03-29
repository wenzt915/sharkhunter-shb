###########################################################################
#
# This file is auto-generated by the Perl DateTime Suite locale
# generator (0.05).  This code generator comes with the
# DateTime::Locale distribution in the tools/ directory, and is called
# generate-from-cldr.
#
# This file as generated from the CLDR XML locale data.  See the
# LICENSE.cldr file included in this distribution for license details.
#
# This file was generated from the source file nb_NO.xml
# The source file version number was 1.47, generated on
# 2009/05/05 23:06:38.
#
# Do not edit this file directly.
#
###########################################################################

package DateTime::Locale::nb_NO;

use strict;
use warnings;
use utf8;

use base 'DateTime::Locale::nb';

sub cldr_version { return "1\.7\.1" }

{
    my $first_day_of_week = "1";
    sub first_day_of_week { return $first_day_of_week }
}

{
    my $glibc_date_format = "\%d\.\ \%b\ \%Y";
    sub glibc_date_format { return $glibc_date_format }
}

{
    my $glibc_date_1_format = "\%a\ \%d\.\ \%b\ \%H\:\%M\:\%S\ \%z\ \%Y";
    sub glibc_date_1_format { return $glibc_date_1_format }
}

{
    my $glibc_datetime_format = "\%a\ \%d\.\ \%b\ \%Y\ kl\.\ \%H\.\%M\ \%z";
    sub glibc_datetime_format { return $glibc_datetime_format }
}

{
    my $glibc_time_format = "kl\.\ \%H\.\%M\ \%z";
    sub glibc_time_format { return $glibc_time_format }
}

1;

__END__


=pod

=encoding utf8

=head1 NAME

DateTime::Locale::nb_NO

=head1 SYNOPSIS

  use DateTime;

  my $dt = DateTime->now( locale => 'nb_NO' );
  print $dt->month_name();

=head1 DESCRIPTION

This is the DateTime locale package for Norwegian Bokmål Norway.

=head1 DATA

This locale inherits from the L<DateTime::Locale::nb> locale.

It contains the following data.

=head2 Days

=head3 Wide (format)

  mandag
  tirsdag
  onsdag
  torsdag
  fredag
  lørdag
  søndag

=head3 Abbreviated (format)

  man.
  tir.
  ons.
  tor.
  fre.
  lør.
  søn.

=head3 Narrow (format)

  M
  T
  O
  T
  F
  L
  S

=head3 Wide (stand-alone)

  mandag
  tirsdag
  onsdag
  torsdag
  fredag
  lørdag
  søndag

=head3 Abbreviated (stand-alone)

  man.
  tir.
  ons.
  tor.
  fre.
  lør.
  søn.

=head3 Narrow (stand-alone)

  M
  T
  O
  T
  F
  L
  S

=head2 Months

=head3 Wide (format)

  januar
  februar
  mars
  april
  mai
  juni
  juli
  august
  september
  oktober
  november
  desember

=head3 Abbreviated (format)

  jan.
  feb.
  mars
  apr.
  mai
  juni
  juli
  aug.
  sep.
  okt.
  nov.
  des.

=head3 Narrow (format)

  J
  F
  M
  A
  M
  J
  J
  A
  S
  O
  N
  D

=head3 Wide (stand-alone)

  januar
  februar
  mars
  april
  mai
  juni
  juli
  august
  september
  oktober
  november
  desember

=head3 Abbreviated (stand-alone)

  jan.
  feb.
  mars
  apr.
  mai
  juni
  juli
  aug.
  sep.
  okt.
  nov.
  des.

=head3 Narrow (stand-alone)

  J
  F
  M
  A
  M
  J
  J
  A
  S
  O
  N
  D

=head2 Quarters

=head3 Wide (format)

  1. kvartal
  2. kvartal
  3. kvartal
  4. kvartal

=head3 Abbreviated (format)

  K1
  K2
  K3
  K4

=head3 Narrow (format)

  1
  2
  3
  4

=head3 Wide (stand-alone)

  1. kvartal
  2. kvartal
  3. kvartal
  4. kvartal

=head3 Abbreviated (stand-alone)

  K1
  K2
  K3
  K4

=head3 Narrow (stand-alone)

  1
  2
  3
  4

=head2 Eras

=head3 Wide

  f.Kr.
  e.Kr.

=head3 Abbreviated

  f.Kr.
  e.Kr.

=head3 Narrow

  f.Kr.
  e.Kr.

=head2 Date Formats

=head3 Full

   2008-02-05T18:30:30 = tirsdag 5. februar 2008
   1995-12-22T09:05:02 = fredag 22. desember 1995
  -0010-09-15T04:44:23 = lørdag 15. september -10

=head3 Long

   2008-02-05T18:30:30 = 5. februar 2008
   1995-12-22T09:05:02 = 22. desember 1995
  -0010-09-15T04:44:23 = 15. september -10

=head3 Medium

   2008-02-05T18:30:30 = 5. feb. 2008
   1995-12-22T09:05:02 = 22. des. 1995
  -0010-09-15T04:44:23 = 15. sep. -10

=head3 Short

   2008-02-05T18:30:30 = 05.02.08
   1995-12-22T09:05:02 = 22.12.95
  -0010-09-15T04:44:23 = 15.09.-10

=head3 Default

   2008-02-05T18:30:30 = 5. feb. 2008
   1995-12-22T09:05:02 = 22. des. 1995
  -0010-09-15T04:44:23 = 15. sep. -10

=head2 Time Formats

=head3 Full

   2008-02-05T18:30:30 = kl. 18.30.30 UTC
   1995-12-22T09:05:02 = kl. 09.05.02 UTC
  -0010-09-15T04:44:23 = kl. 04.44.23 UTC

=head3 Long

   2008-02-05T18:30:30 = 18.30.30 UTC
   1995-12-22T09:05:02 = 09.05.02 UTC
  -0010-09-15T04:44:23 = 04.44.23 UTC

=head3 Medium

   2008-02-05T18:30:30 = 18.30.30
   1995-12-22T09:05:02 = 09.05.02
  -0010-09-15T04:44:23 = 04.44.23

=head3 Short

   2008-02-05T18:30:30 = 18.30
   1995-12-22T09:05:02 = 09.05
  -0010-09-15T04:44:23 = 04.44

=head3 Default

   2008-02-05T18:30:30 = 18.30.30
   1995-12-22T09:05:02 = 09.05.02
  -0010-09-15T04:44:23 = 04.44.23

=head2 Datetime Formats

=head3 Full

   2008-02-05T18:30:30 = tirsdag 5. februar 2008 kl. 18.30.30 UTC
   1995-12-22T09:05:02 = fredag 22. desember 1995 kl. 09.05.02 UTC
  -0010-09-15T04:44:23 = lørdag 15. september -10 kl. 04.44.23 UTC

=head3 Long

   2008-02-05T18:30:30 = 5. februar 2008 18.30.30 UTC
   1995-12-22T09:05:02 = 22. desember 1995 09.05.02 UTC
  -0010-09-15T04:44:23 = 15. september -10 04.44.23 UTC

=head3 Medium

   2008-02-05T18:30:30 = 5. feb. 2008 18.30.30
   1995-12-22T09:05:02 = 22. des. 1995 09.05.02
  -0010-09-15T04:44:23 = 15. sep. -10 04.44.23

=head3 Short

   2008-02-05T18:30:30 = 05.02.08 18.30
   1995-12-22T09:05:02 = 22.12.95 09.05
  -0010-09-15T04:44:23 = 15.09.-10 04.44

=head3 Default

   2008-02-05T18:30:30 = 5. feb. 2008 18.30.30
   1995-12-22T09:05:02 = 22. des. 1995 09.05.02
  -0010-09-15T04:44:23 = 15. sep. -10 04.44.23

=head2 Available Formats

=head3 d (d.)

   2008-02-05T18:30:30 = 5.
   1995-12-22T09:05:02 = 22.
  -0010-09-15T04:44:23 = 15.

=head3 EEEd (EEE d)

   2008-02-05T18:30:30 = tir. 5
   1995-12-22T09:05:02 = fre. 22
  -0010-09-15T04:44:23 = lør. 15

=head3 HHmmss (HH.mm.ss)

   2008-02-05T18:30:30 = 18.30.30
   1995-12-22T09:05:02 = 09.05.02
  -0010-09-15T04:44:23 = 04.44.23

=head3 Hm (HH.mm)

   2008-02-05T18:30:30 = 18.30
   1995-12-22T09:05:02 = 09.05
  -0010-09-15T04:44:23 = 04.44

=head3 hm (h.mm a)

   2008-02-05T18:30:30 = 6.30 PM
   1995-12-22T09:05:02 = 9.05 AM
  -0010-09-15T04:44:23 = 4.44 AM

=head3 Hms (H:mm:ss)

   2008-02-05T18:30:30 = 18:30:30
   1995-12-22T09:05:02 = 9:05:02
  -0010-09-15T04:44:23 = 4:44:23

=head3 hms (h.mm.ss a)

   2008-02-05T18:30:30 = 6.30.30 PM
   1995-12-22T09:05:02 = 9.05.02 AM
  -0010-09-15T04:44:23 = 4.44.23 AM

=head3 M (L)

   2008-02-05T18:30:30 = 2
   1995-12-22T09:05:02 = 12
  -0010-09-15T04:44:23 = 9

=head3 Md (d.M.)

   2008-02-05T18:30:30 = 5.2.
   1995-12-22T09:05:02 = 22.12.
  -0010-09-15T04:44:23 = 15.9.

=head3 MEd (E d.M)

   2008-02-05T18:30:30 = tir. 5.2
   1995-12-22T09:05:02 = fre. 22.12
  -0010-09-15T04:44:23 = lør. 15.9

=head3 MMdd (dd.MM)

   2008-02-05T18:30:30 = 05.02
   1995-12-22T09:05:02 = 22.12
  -0010-09-15T04:44:23 = 15.09

=head3 MMM (LLL)

   2008-02-05T18:30:30 = feb.
   1995-12-22T09:05:02 = des.
  -0010-09-15T04:44:23 = sep.

=head3 MMMd (d. MMM)

   2008-02-05T18:30:30 = 5. feb.
   1995-12-22T09:05:02 = 22. des.
  -0010-09-15T04:44:23 = 15. sep.

=head3 MMMEd (E d. MMM)

   2008-02-05T18:30:30 = tir. 5. feb.
   1995-12-22T09:05:02 = fre. 22. des.
  -0010-09-15T04:44:23 = lør. 15. sep.

=head3 MMMMd (d. MMMM)

   2008-02-05T18:30:30 = 5. februar
   1995-12-22T09:05:02 = 22. desember
  -0010-09-15T04:44:23 = 15. september

=head3 MMMMEd (E d. MMMM)

   2008-02-05T18:30:30 = tir. 5. februar
   1995-12-22T09:05:02 = fre. 22. desember
  -0010-09-15T04:44:23 = lør. 15. september

=head3 ms (mm.ss)

   2008-02-05T18:30:30 = 30.30
   1995-12-22T09:05:02 = 05.02
  -0010-09-15T04:44:23 = 44.23

=head3 y (y)

   2008-02-05T18:30:30 = 2008
   1995-12-22T09:05:02 = 1995
  -0010-09-15T04:44:23 = -10

=head3 yM (M yyyy)

   2008-02-05T18:30:30 = 2 2008
   1995-12-22T09:05:02 = 12 1995
  -0010-09-15T04:44:23 = 9 -010

=head3 yMEd (EEE d.M.yyyy)

   2008-02-05T18:30:30 = tir. 5.2.2008
   1995-12-22T09:05:02 = fre. 22.12.1995
  -0010-09-15T04:44:23 = lør. 15.9.-010

=head3 yMMM (MMM y)

   2008-02-05T18:30:30 = feb. 2008
   1995-12-22T09:05:02 = des. 1995
  -0010-09-15T04:44:23 = sep. -10

=head3 yMMMEd (EEE d. MMM y)

   2008-02-05T18:30:30 = tir. 5. feb. 2008
   1995-12-22T09:05:02 = fre. 22. des. 1995
  -0010-09-15T04:44:23 = lør. 15. sep. -10

=head3 yMMMM (MMMM y)

   2008-02-05T18:30:30 = februar 2008
   1995-12-22T09:05:02 = desember 1995
  -0010-09-15T04:44:23 = september -10

=head3 yQ (Q yyyy)

   2008-02-05T18:30:30 = 1 2008
   1995-12-22T09:05:02 = 4 1995
  -0010-09-15T04:44:23 = 3 -010

=head3 yQQQ (QQQ y)

   2008-02-05T18:30:30 = K1 2008
   1995-12-22T09:05:02 = K4 1995
  -0010-09-15T04:44:23 = K3 -10

=head3 yyMM (MM.yy)

   2008-02-05T18:30:30 = 02.08
   1995-12-22T09:05:02 = 12.95
  -0010-09-15T04:44:23 = 09.-10

=head3 yyMMM (MMM yy)

   2008-02-05T18:30:30 = feb. 08
   1995-12-22T09:05:02 = des. 95
  -0010-09-15T04:44:23 = sep. -10

=head3 yyQ (Q yy)

   2008-02-05T18:30:30 = 1 08
   1995-12-22T09:05:02 = 4 95
  -0010-09-15T04:44:23 = 3 -10

=head3 yyQQQQ (QQQQ yy)

   2008-02-05T18:30:30 = 1. kvartal 08
   1995-12-22T09:05:02 = 4. kvartal 95
  -0010-09-15T04:44:23 = 3. kvartal -10

=head3 yyyyMMMM (MMMM y)

   2008-02-05T18:30:30 = februar 2008
   1995-12-22T09:05:02 = desember 1995
  -0010-09-15T04:44:23 = september -10

=head2 Miscellaneous

=head3 Prefers 24 hour time?

Yes

=head3 Local first day of the week

mandag


=head1 SUPPORT

See L<DateTime::Locale>.

=head1 AUTHOR

Dave Rolsky <autarch@urth.org>

=head1 COPYRIGHT

Copyright (c) 2008 David Rolsky. All rights reserved. This program is
free software; you can redistribute it and/or modify it under the same
terms as Perl itself.

This module was generated from data provided by the CLDR project, see
the LICENSE.cldr in this distribution for details on the CLDR data's
license.

=cut
