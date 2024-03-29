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
# This file was generated from the source file pl_PL.xml
# The source file version number was 1.50, generated on
# 2009/05/05 23:06:39.
#
# Do not edit this file directly.
#
###########################################################################

package DateTime::Locale::pl_PL;

use strict;
use warnings;
use utf8;

use base 'DateTime::Locale::pl';

sub cldr_version { return "1\.7\.1" }

{
    my $first_day_of_week = "1";
    sub first_day_of_week { return $first_day_of_week }
}

{
    my $glibc_date_format = "\%d\.\%m\.\%Y";
    sub glibc_date_format { return $glibc_date_format }
}

{
    my $glibc_date_1_format = "\%a\,\ \%\-d\ \%b\ \%Y\,\ \%T\ \%Z";
    sub glibc_date_1_format { return $glibc_date_1_format }
}

{
    my $glibc_datetime_format = "\%a\,\ \%\-d\ \%b\ \%Y\,\ \%T";
    sub glibc_datetime_format { return $glibc_datetime_format }
}

{
    my $glibc_time_format = "\%T";
    sub glibc_time_format { return $glibc_time_format }
}

1;

__END__


=pod

=encoding utf8

=head1 NAME

DateTime::Locale::pl_PL

=head1 SYNOPSIS

  use DateTime;

  my $dt = DateTime->now( locale => 'pl_PL' );
  print $dt->month_name();

=head1 DESCRIPTION

This is the DateTime locale package for Polish Poland.

=head1 DATA

This locale inherits from the L<DateTime::Locale::pl> locale.

It contains the following data.

=head2 Days

=head3 Wide (format)

  poniedziałek
  wtorek
  środa
  czwartek
  piątek
  sobota
  niedziela

=head3 Abbreviated (format)

  pon.
  wt.
  śr.
  czw.
  pt.
  sob.
  niedz.

=head3 Narrow (format)

  P
  W
  Ś
  C
  P
  S
  N

=head3 Wide (stand-alone)

  poniedziałek
  wtorek
  środa
  czwartek
  piątek
  sobota
  niedziela

=head3 Abbreviated (stand-alone)

  pon.
  wt.
  śr.
  czw.
  pt.
  sob.
  niedz.

=head3 Narrow (stand-alone)

  P
  W
  Ś
  C
  P
  S
  N

=head2 Months

=head3 Wide (format)

  stycznia
  lutego
  marca
  kwietnia
  maja
  czerwca
  lipca
  sierpnia
  września
  października
  listopada
  grudnia

=head3 Abbreviated (format)

  sty
  lut
  mar
  kwi
  maj
  cze
  lip
  sie
  wrz
  paź
  lis
  gru

=head3 Narrow (format)

  s
  l
  m
  k
  m
  c
  l
  s
  w
  p
  l
  g

=head3 Wide (stand-alone)

  styczeń
  luty
  marzec
  kwiecień
  maj
  czerwiec
  lipiec
  sierpień
  wrzesień
  październik
  listopad
  grudzień

=head3 Abbreviated (stand-alone)

  sty
  lut
  mar
  kwi
  maj
  cze
  lip
  sie
  wrz
  paź
  lis
  gru

=head3 Narrow (stand-alone)

  s
  l
  m
  k
  m
  c
  l
  s
  w
  p
  l
  g

=head2 Quarters

=head3 Wide (format)

  I kwartał
  II kwartał
  III kwartał
  IV kwartał

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

  I kwartał
  II kwartał
  III kwartał
  IV kwartał

=head3 Abbreviated (stand-alone)

  1 kw.
  2 kw.
  3 kw.
  4 kw.

=head3 Narrow (stand-alone)

  1
  2
  3
  4

=head2 Eras

=head3 Wide

  p.n.e.
  n.e.

=head3 Abbreviated

  p.n.e.
  n.e.

=head3 Narrow

  p.n.e.
  n.e.

=head2 Date Formats

=head3 Full

   2008-02-05T18:30:30 = wtorek, 5 lutego 2008
   1995-12-22T09:05:02 = piątek, 22 grudnia 1995
  -0010-09-15T04:44:23 = sobota, 15 września -10

=head3 Long

   2008-02-05T18:30:30 = 5 lutego 2008
   1995-12-22T09:05:02 = 22 grudnia 1995
  -0010-09-15T04:44:23 = 15 września -10

=head3 Medium

   2008-02-05T18:30:30 = 05-02-2008
   1995-12-22T09:05:02 = 22-12-1995
  -0010-09-15T04:44:23 = 15-09--010

=head3 Short

   2008-02-05T18:30:30 = 05-02-08
   1995-12-22T09:05:02 = 22-12-95
  -0010-09-15T04:44:23 = 15-09--10

=head3 Default

   2008-02-05T18:30:30 = 05-02-2008
   1995-12-22T09:05:02 = 22-12-1995
  -0010-09-15T04:44:23 = 15-09--010

=head2 Time Formats

=head3 Full

   2008-02-05T18:30:30 = 18:30:30 UTC
   1995-12-22T09:05:02 = 09:05:02 UTC
  -0010-09-15T04:44:23 = 04:44:23 UTC

=head3 Long

   2008-02-05T18:30:30 = 18:30:30 UTC
   1995-12-22T09:05:02 = 09:05:02 UTC
  -0010-09-15T04:44:23 = 04:44:23 UTC

=head3 Medium

   2008-02-05T18:30:30 = 18:30:30
   1995-12-22T09:05:02 = 09:05:02
  -0010-09-15T04:44:23 = 04:44:23

=head3 Short

   2008-02-05T18:30:30 = 18:30
   1995-12-22T09:05:02 = 09:05
  -0010-09-15T04:44:23 = 04:44

=head3 Default

   2008-02-05T18:30:30 = 18:30:30
   1995-12-22T09:05:02 = 09:05:02
  -0010-09-15T04:44:23 = 04:44:23

=head2 Datetime Formats

=head3 Full

   2008-02-05T18:30:30 = wtorek, 5 lutego 2008 18:30:30 UTC
   1995-12-22T09:05:02 = piątek, 22 grudnia 1995 09:05:02 UTC
  -0010-09-15T04:44:23 = sobota, 15 września -10 04:44:23 UTC

=head3 Long

   2008-02-05T18:30:30 = 5 lutego 2008 18:30:30 UTC
   1995-12-22T09:05:02 = 22 grudnia 1995 09:05:02 UTC
  -0010-09-15T04:44:23 = 15 września -10 04:44:23 UTC

=head3 Medium

   2008-02-05T18:30:30 = 05-02-2008 18:30:30
   1995-12-22T09:05:02 = 22-12-1995 09:05:02
  -0010-09-15T04:44:23 = 15-09--010 04:44:23

=head3 Short

   2008-02-05T18:30:30 = 05-02-08 18:30
   1995-12-22T09:05:02 = 22-12-95 09:05
  -0010-09-15T04:44:23 = 15-09--10 04:44

=head3 Default

   2008-02-05T18:30:30 = 05-02-2008 18:30:30
   1995-12-22T09:05:02 = 22-12-1995 09:05:02
  -0010-09-15T04:44:23 = 15-09--010 04:44:23

=head2 Available Formats

=head3 d (d)

   2008-02-05T18:30:30 = 5
   1995-12-22T09:05:02 = 22
  -0010-09-15T04:44:23 = 15

=head3 EEEd (d EEE)

   2008-02-05T18:30:30 = 5 wt.
   1995-12-22T09:05:02 = 22 pt.
  -0010-09-15T04:44:23 = 15 sob.

=head3 HHmm (HH:mm)

   2008-02-05T18:30:30 = 18:30
   1995-12-22T09:05:02 = 09:05
  -0010-09-15T04:44:23 = 04:44

=head3 hhmm (hh:mm a)

   2008-02-05T18:30:30 = 06:30 PM
   1995-12-22T09:05:02 = 09:05 AM
  -0010-09-15T04:44:23 = 04:44 AM

=head3 HHmmss (HH:mm:ss)

   2008-02-05T18:30:30 = 18:30:30
   1995-12-22T09:05:02 = 09:05:02
  -0010-09-15T04:44:23 = 04:44:23

=head3 hhmmss (hh:mm:ss a)

   2008-02-05T18:30:30 = 06:30:30 PM
   1995-12-22T09:05:02 = 09:05:02 AM
  -0010-09-15T04:44:23 = 04:44:23 AM

=head3 Hm (H:mm)

   2008-02-05T18:30:30 = 18:30
   1995-12-22T09:05:02 = 9:05
  -0010-09-15T04:44:23 = 4:44

=head3 hm (h:mm a)

   2008-02-05T18:30:30 = 6:30 PM
   1995-12-22T09:05:02 = 9:05 AM
  -0010-09-15T04:44:23 = 4:44 AM

=head3 Hms (H:mm:ss)

   2008-02-05T18:30:30 = 18:30:30
   1995-12-22T09:05:02 = 9:05:02
  -0010-09-15T04:44:23 = 4:44:23

=head3 hms (h:mm:ss a)

   2008-02-05T18:30:30 = 6:30:30 PM
   1995-12-22T09:05:02 = 9:05:02 AM
  -0010-09-15T04:44:23 = 4:44:23 AM

=head3 M (L)

   2008-02-05T18:30:30 = 2
   1995-12-22T09:05:02 = 12
  -0010-09-15T04:44:23 = 9

=head3 Md (d.M)

   2008-02-05T18:30:30 = 5.2
   1995-12-22T09:05:02 = 22.12
  -0010-09-15T04:44:23 = 15.9

=head3 MEd (E, M-d)

   2008-02-05T18:30:30 = wt., 2-5
   1995-12-22T09:05:02 = pt., 12-22
  -0010-09-15T04:44:23 = sob., 9-15

=head3 MMdd (MM-dd)

   2008-02-05T18:30:30 = 02-05
   1995-12-22T09:05:02 = 12-22
  -0010-09-15T04:44:23 = 09-15

=head3 MMM (LLL)

   2008-02-05T18:30:30 = lut
   1995-12-22T09:05:02 = gru
  -0010-09-15T04:44:23 = wrz

=head3 MMMd (MMM d)

   2008-02-05T18:30:30 = lut 5
   1995-12-22T09:05:02 = gru 22
  -0010-09-15T04:44:23 = wrz 15

=head3 MMMEd (d MMM E)

   2008-02-05T18:30:30 = 5 lut wt.
   1995-12-22T09:05:02 = 22 gru pt.
  -0010-09-15T04:44:23 = 15 wrz sob.

=head3 MMMMd (d MMMM)

   2008-02-05T18:30:30 = 5 lutego
   1995-12-22T09:05:02 = 22 grudnia
  -0010-09-15T04:44:23 = 15 września

=head3 MMMMEd (d MMMM E)

   2008-02-05T18:30:30 = 5 lutego wt.
   1995-12-22T09:05:02 = 22 grudnia pt.
  -0010-09-15T04:44:23 = 15 września sob.

=head3 mmss (mm:ss)

   2008-02-05T18:30:30 = 30:30
   1995-12-22T09:05:02 = 05:02
  -0010-09-15T04:44:23 = 44:23

=head3 ms (mm:ss)

   2008-02-05T18:30:30 = 30:30
   1995-12-22T09:05:02 = 05:02
  -0010-09-15T04:44:23 = 44:23

=head3 y (y)

   2008-02-05T18:30:30 = 2008
   1995-12-22T09:05:02 = 1995
  -0010-09-15T04:44:23 = -10

=head3 yM (yyyy-M)

   2008-02-05T18:30:30 = 2008-2
   1995-12-22T09:05:02 = 1995-12
  -0010-09-15T04:44:23 = -010-9

=head3 yMEd (EEE, d.M.yyyy)

   2008-02-05T18:30:30 = wt., 5.2.2008
   1995-12-22T09:05:02 = pt., 22.12.1995
  -0010-09-15T04:44:23 = sob., 15.9.-010

=head3 yMMM (y MMM)

   2008-02-05T18:30:30 = 2008 lut
   1995-12-22T09:05:02 = 1995 gru
  -0010-09-15T04:44:23 = -10 wrz

=head3 yMMMEd (EEE, d MMM y)

   2008-02-05T18:30:30 = wt., 5 lut 2008
   1995-12-22T09:05:02 = pt., 22 gru 1995
  -0010-09-15T04:44:23 = sob., 15 wrz -10

=head3 yMMMM (LLLL y)

   2008-02-05T18:30:30 = luty 2008
   1995-12-22T09:05:02 = grudzień 1995
  -0010-09-15T04:44:23 = wrzesień -10

=head3 yQ (yyyy Q)

   2008-02-05T18:30:30 = 2008 1
   1995-12-22T09:05:02 = 1995 4
  -0010-09-15T04:44:23 = -010 3

=head3 yQQQ (y QQQ)

   2008-02-05T18:30:30 = 2008 K1
   1995-12-22T09:05:02 = 1995 K4
  -0010-09-15T04:44:23 = -10 K3

=head3 yyMM (MM/yy)

   2008-02-05T18:30:30 = 02/08
   1995-12-22T09:05:02 = 12/95
  -0010-09-15T04:44:23 = 09/-10

=head3 yyMMM (MMM yy)

   2008-02-05T18:30:30 = lut 08
   1995-12-22T09:05:02 = gru 95
  -0010-09-15T04:44:23 = wrz -10

=head3 yyQ (Q yy)

   2008-02-05T18:30:30 = 1 08
   1995-12-22T09:05:02 = 4 95
  -0010-09-15T04:44:23 = 3 -10

=head3 yyyyMM (yyyy-MM)

   2008-02-05T18:30:30 = 2008-02
   1995-12-22T09:05:02 = 1995-12
  -0010-09-15T04:44:23 = -010-09

=head3 yyyyMMMM (LLLL y)

   2008-02-05T18:30:30 = luty 2008
   1995-12-22T09:05:02 = grudzień 1995
  -0010-09-15T04:44:23 = wrzesień -10

=head2 Miscellaneous

=head3 Prefers 24 hour time?

Yes

=head3 Local first day of the week

poniedziałek


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
