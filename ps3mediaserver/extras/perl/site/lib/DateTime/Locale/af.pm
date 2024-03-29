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
# This file was generated from the source file af.xml
# The source file version number was 1.78, generated on
# 2009/06/15 03:46:24.
#
# Do not edit this file directly.
#
###########################################################################

package DateTime::Locale::af;

use strict;
use warnings;
use utf8;

use base 'DateTime::Locale::root';

sub cldr_version { return "1\.7\.1" }

{
    my $am_pm_abbreviated = [ "vm\.", "nm\." ];
    sub am_pm_abbreviated { return $am_pm_abbreviated }
}
{
    my $date_format_full = "EEEE\ dd\ MMMM\ y";
    sub date_format_full { return $date_format_full }
}

{
    my $date_format_long = "dd\ MMMM\ y";
    sub date_format_long { return $date_format_long }
}

{
    my $date_format_medium = "dd\ MMM\ y";
    sub date_format_medium { return $date_format_medium }
}

{
    my $date_format_short = "yyyy\/MM\/dd";
    sub date_format_short { return $date_format_short }
}

{
    my $day_format_abbreviated = [ "Ma", "Di", "Wo", "Do", "Vr", "Sa", "So" ];
    sub day_format_abbreviated { return $day_format_abbreviated }
}

sub day_format_narrow { $_[0]->day_stand_alone_narrow() }

{
    my $day_format_wide = [ "Maandag", "Dinsdag", "Woensdag", "Donderdag", "Vrydag", "Saterdag", "Sondag" ];
    sub day_format_wide { return $day_format_wide }
}

sub day_stand_alone_abbreviated { $_[0]->day_format_abbreviated() }

{
    my $day_stand_alone_narrow = [ "2", "3", "4", "5", "6", "7", "1" ];
    sub day_stand_alone_narrow { return $day_stand_alone_narrow }
}

sub day_stand_alone_wide { $_[0]->day_format_wide() }

{
    my $era_abbreviated = [ "v\.C\.", "n\.C\." ];
    sub era_abbreviated { return $era_abbreviated }
}

sub era_narrow { $_[0]->era_abbreviated() }

{
    my $era_wide = [ "voor\ Christus", "na\ Christus" ];
    sub era_wide { return $era_wide }
}
{
    my $first_day_of_week = "1";
    sub first_day_of_week { return $first_day_of_week }
}

{
    my $month_format_abbreviated = [ "Jan", "Feb", "Mar", "Apr", "Mei", "Jun", "Jul", "Aug", "Sep", "Okt", "Nov", "Des" ];
    sub month_format_abbreviated { return $month_format_abbreviated }
}

sub month_format_narrow { $_[0]->month_stand_alone_narrow() }

{
    my $month_format_wide = [ "Januarie", "Februarie", "Maart", "April", "Mei", "Junie", "Julie", "Augustus", "September", "Oktober", "November", "Desember" ];
    sub month_format_wide { return $month_format_wide }
}

sub month_stand_alone_abbreviated { $_[0]->month_format_abbreviated() }

{
    my $month_stand_alone_narrow = [ "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12" ];
    sub month_stand_alone_narrow { return $month_stand_alone_narrow }
}

sub month_stand_alone_wide { $_[0]->month_format_wide() }

{
    my $quarter_format_abbreviated = [ "K1", "K2", "K3", "K4" ];
    sub quarter_format_abbreviated { return $quarter_format_abbreviated }
}
{
    my $quarter_format_wide = [ "1ste\ kwartaal", "2de\ kwartaal", "3de\ kwartaal", "4de\ kwartaal" ];
    sub quarter_format_wide { return $quarter_format_wide }
}

sub quarter_stand_alone_abbreviated { $_[0]->quarter_format_abbreviated() }


sub quarter_stand_alone_wide { $_[0]->quarter_format_wide() }

{
    my $time_format_full = "h\:mm\:ss\ a\ zzzz";
    sub time_format_full { return $time_format_full }
}

{
    my $time_format_long = "h\:mm\:ss\ a\ z";
    sub time_format_long { return $time_format_long }
}

{
    my $time_format_medium = "h\:mm\:ss\ a";
    sub time_format_medium { return $time_format_medium }
}

{
    my $time_format_short = "h\:mm\ a";
    sub time_format_short { return $time_format_short }
}

{
    my $_format_for_MMMMd = "d\ MMMM";
    sub _format_for_MMMMd { return $_format_for_MMMMd }
}

{
    my $_format_for_MMMMdd = "dd\ MMMM";
    sub _format_for_MMMMdd { return $_format_for_MMMMdd }
}

{
    my $_format_for_MMdd = "MM\/dd";
    sub _format_for_MMdd { return $_format_for_MMdd }
}

{
    my $_format_for_yyQ = "Q\ yy";
    sub _format_for_yyQ { return $_format_for_yyQ }
}

{
    my $_format_for_yyyyMM = "yyyy\/MM";
    sub _format_for_yyyyMM { return $_format_for_yyyyMM }
}

{
    my $_format_for_yyyyMMMM = "MMMM\ y";
    sub _format_for_yyyyMMMM { return $_format_for_yyyyMMMM }
}

{
    my $_available_formats =
        {
          "MMMMd" => "d\ MMMM",
          "MMMMdd" => "dd\ MMMM",
          "MMdd" => "MM\/dd",
          "yyQ" => "Q\ yy",
          "yyyyMM" => "yyyy\/MM",
          "yyyyMMMM" => "MMMM\ y"
        };
    sub _available_formats { return $_available_formats }
}

1;

__END__


=pod

=encoding utf8

=head1 NAME

DateTime::Locale::af

=head1 SYNOPSIS

  use DateTime;

  my $dt = DateTime->now( locale => 'af' );
  print $dt->month_name();

=head1 DESCRIPTION

This is the DateTime locale package for Afrikaans.

=head1 DATA

This locale inherits from the L<DateTime::Locale::root> locale.

It contains the following data.

=head2 Days

=head3 Wide (format)

  Maandag
  Dinsdag
  Woensdag
  Donderdag
  Vrydag
  Saterdag
  Sondag

=head3 Abbreviated (format)

  Ma
  Di
  Wo
  Do
  Vr
  Sa
  So

=head3 Narrow (format)

  2
  3
  4
  5
  6
  7
  1

=head3 Wide (stand-alone)

  Maandag
  Dinsdag
  Woensdag
  Donderdag
  Vrydag
  Saterdag
  Sondag

=head3 Abbreviated (stand-alone)

  Ma
  Di
  Wo
  Do
  Vr
  Sa
  So

=head3 Narrow (stand-alone)

  2
  3
  4
  5
  6
  7
  1

=head2 Months

=head3 Wide (format)

  Januarie
  Februarie
  Maart
  April
  Mei
  Junie
  Julie
  Augustus
  September
  Oktober
  November
  Desember

=head3 Abbreviated (format)

  Jan
  Feb
  Mar
  Apr
  Mei
  Jun
  Jul
  Aug
  Sep
  Okt
  Nov
  Des

=head3 Narrow (format)

  1
  2
  3
  4
  5
  6
  7
  8
  9
  10
  11
  12

=head3 Wide (stand-alone)

  Januarie
  Februarie
  Maart
  April
  Mei
  Junie
  Julie
  Augustus
  September
  Oktober
  November
  Desember

=head3 Abbreviated (stand-alone)

  Jan
  Feb
  Mar
  Apr
  Mei
  Jun
  Jul
  Aug
  Sep
  Okt
  Nov
  Des

=head3 Narrow (stand-alone)

  1
  2
  3
  4
  5
  6
  7
  8
  9
  10
  11
  12

=head2 Quarters

=head3 Wide (format)

  1ste kwartaal
  2de kwartaal
  3de kwartaal
  4de kwartaal

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

  1ste kwartaal
  2de kwartaal
  3de kwartaal
  4de kwartaal

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

  voor Christus
  na Christus

=head3 Abbreviated

  v.C.
  n.C.

=head3 Narrow

  v.C.
  n.C.

=head2 Date Formats

=head3 Full

   2008-02-05T18:30:30 = Dinsdag 05 Februarie 2008
   1995-12-22T09:05:02 = Vrydag 22 Desember 1995
  -0010-09-15T04:44:23 = Saterdag 15 September -10

=head3 Long

   2008-02-05T18:30:30 = 05 Februarie 2008
   1995-12-22T09:05:02 = 22 Desember 1995
  -0010-09-15T04:44:23 = 15 September -10

=head3 Medium

   2008-02-05T18:30:30 = 05 Feb 2008
   1995-12-22T09:05:02 = 22 Des 1995
  -0010-09-15T04:44:23 = 15 Sep -10

=head3 Short

   2008-02-05T18:30:30 = 2008/02/05
   1995-12-22T09:05:02 = 1995/12/22
  -0010-09-15T04:44:23 = -010/09/15

=head3 Default

   2008-02-05T18:30:30 = 05 Feb 2008
   1995-12-22T09:05:02 = 22 Des 1995
  -0010-09-15T04:44:23 = 15 Sep -10

=head2 Time Formats

=head3 Full

   2008-02-05T18:30:30 = 6:30:30 nm. UTC
   1995-12-22T09:05:02 = 9:05:02 vm. UTC
  -0010-09-15T04:44:23 = 4:44:23 vm. UTC

=head3 Long

   2008-02-05T18:30:30 = 6:30:30 nm. UTC
   1995-12-22T09:05:02 = 9:05:02 vm. UTC
  -0010-09-15T04:44:23 = 4:44:23 vm. UTC

=head3 Medium

   2008-02-05T18:30:30 = 6:30:30 nm.
   1995-12-22T09:05:02 = 9:05:02 vm.
  -0010-09-15T04:44:23 = 4:44:23 vm.

=head3 Short

   2008-02-05T18:30:30 = 6:30 nm.
   1995-12-22T09:05:02 = 9:05 vm.
  -0010-09-15T04:44:23 = 4:44 vm.

=head3 Default

   2008-02-05T18:30:30 = 6:30:30 nm.
   1995-12-22T09:05:02 = 9:05:02 vm.
  -0010-09-15T04:44:23 = 4:44:23 vm.

=head2 Datetime Formats

=head3 Full

   2008-02-05T18:30:30 = Dinsdag 05 Februarie 2008 6:30:30 nm. UTC
   1995-12-22T09:05:02 = Vrydag 22 Desember 1995 9:05:02 vm. UTC
  -0010-09-15T04:44:23 = Saterdag 15 September -10 4:44:23 vm. UTC

=head3 Long

   2008-02-05T18:30:30 = 05 Februarie 2008 6:30:30 nm. UTC
   1995-12-22T09:05:02 = 22 Desember 1995 9:05:02 vm. UTC
  -0010-09-15T04:44:23 = 15 September -10 4:44:23 vm. UTC

=head3 Medium

   2008-02-05T18:30:30 = 05 Feb 2008 6:30:30 nm.
   1995-12-22T09:05:02 = 22 Des 1995 9:05:02 vm.
  -0010-09-15T04:44:23 = 15 Sep -10 4:44:23 vm.

=head3 Short

   2008-02-05T18:30:30 = 2008/02/05 6:30 nm.
   1995-12-22T09:05:02 = 1995/12/22 9:05 vm.
  -0010-09-15T04:44:23 = -010/09/15 4:44 vm.

=head3 Default

   2008-02-05T18:30:30 = 05 Feb 2008 6:30:30 nm.
   1995-12-22T09:05:02 = 22 Des 1995 9:05:02 vm.
  -0010-09-15T04:44:23 = 15 Sep -10 4:44:23 vm.

=head2 Available Formats

=head3 d (d)

   2008-02-05T18:30:30 = 5
   1995-12-22T09:05:02 = 22
  -0010-09-15T04:44:23 = 15

=head3 EEEd (d EEE)

   2008-02-05T18:30:30 = 5 Di
   1995-12-22T09:05:02 = 22 Vr
  -0010-09-15T04:44:23 = 15 Sa

=head3 Hm (H:mm)

   2008-02-05T18:30:30 = 18:30
   1995-12-22T09:05:02 = 9:05
  -0010-09-15T04:44:23 = 4:44

=head3 hm (h:mm a)

   2008-02-05T18:30:30 = 6:30 nm.
   1995-12-22T09:05:02 = 9:05 vm.
  -0010-09-15T04:44:23 = 4:44 vm.

=head3 Hms (H:mm:ss)

   2008-02-05T18:30:30 = 18:30:30
   1995-12-22T09:05:02 = 9:05:02
  -0010-09-15T04:44:23 = 4:44:23

=head3 hms (h:mm:ss a)

   2008-02-05T18:30:30 = 6:30:30 nm.
   1995-12-22T09:05:02 = 9:05:02 vm.
  -0010-09-15T04:44:23 = 4:44:23 vm.

=head3 M (L)

   2008-02-05T18:30:30 = 2
   1995-12-22T09:05:02 = 12
  -0010-09-15T04:44:23 = 9

=head3 Md (M-d)

   2008-02-05T18:30:30 = 2-5
   1995-12-22T09:05:02 = 12-22
  -0010-09-15T04:44:23 = 9-15

=head3 MEd (E, M-d)

   2008-02-05T18:30:30 = Di, 2-5
   1995-12-22T09:05:02 = Vr, 12-22
  -0010-09-15T04:44:23 = Sa, 9-15

=head3 MMdd (MM/dd)

   2008-02-05T18:30:30 = 02/05
   1995-12-22T09:05:02 = 12/22
  -0010-09-15T04:44:23 = 09/15

=head3 MMM (LLL)

   2008-02-05T18:30:30 = Feb
   1995-12-22T09:05:02 = Des
  -0010-09-15T04:44:23 = Sep

=head3 MMMd (MMM d)

   2008-02-05T18:30:30 = Feb 5
   1995-12-22T09:05:02 = Des 22
  -0010-09-15T04:44:23 = Sep 15

=head3 MMMEd (E MMM d)

   2008-02-05T18:30:30 = Di Feb 5
   1995-12-22T09:05:02 = Vr Des 22
  -0010-09-15T04:44:23 = Sa Sep 15

=head3 MMMMd (d MMMM)

   2008-02-05T18:30:30 = 5 Februarie
   1995-12-22T09:05:02 = 22 Desember
  -0010-09-15T04:44:23 = 15 September

=head3 MMMMdd (dd MMMM)

   2008-02-05T18:30:30 = 05 Februarie
   1995-12-22T09:05:02 = 22 Desember
  -0010-09-15T04:44:23 = 15 September

=head3 MMMMEd (E MMMM d)

   2008-02-05T18:30:30 = Di Februarie 5
   1995-12-22T09:05:02 = Vr Desember 22
  -0010-09-15T04:44:23 = Sa September 15

=head3 ms (mm:ss)

   2008-02-05T18:30:30 = 30:30
   1995-12-22T09:05:02 = 05:02
  -0010-09-15T04:44:23 = 44:23

=head3 y (y)

   2008-02-05T18:30:30 = 2008
   1995-12-22T09:05:02 = 1995
  -0010-09-15T04:44:23 = -10

=head3 yM (y-M)

   2008-02-05T18:30:30 = 2008-2
   1995-12-22T09:05:02 = 1995-12
  -0010-09-15T04:44:23 = -10-9

=head3 yMEd (EEE, y-M-d)

   2008-02-05T18:30:30 = Di, 2008-2-5
   1995-12-22T09:05:02 = Vr, 1995-12-22
  -0010-09-15T04:44:23 = Sa, -10-9-15

=head3 yMMM (y MMM)

   2008-02-05T18:30:30 = 2008 Feb
   1995-12-22T09:05:02 = 1995 Des
  -0010-09-15T04:44:23 = -10 Sep

=head3 yMMMEd (EEE, y MMM d)

   2008-02-05T18:30:30 = Di, 2008 Feb 5
   1995-12-22T09:05:02 = Vr, 1995 Des 22
  -0010-09-15T04:44:23 = Sa, -10 Sep 15

=head3 yMMMM (y MMMM)

   2008-02-05T18:30:30 = 2008 Februarie
   1995-12-22T09:05:02 = 1995 Desember
  -0010-09-15T04:44:23 = -10 September

=head3 yQ (y Q)

   2008-02-05T18:30:30 = 2008 1
   1995-12-22T09:05:02 = 1995 4
  -0010-09-15T04:44:23 = -10 3

=head3 yQQQ (y QQQ)

   2008-02-05T18:30:30 = 2008 K1
   1995-12-22T09:05:02 = 1995 K4
  -0010-09-15T04:44:23 = -10 K3

=head3 yyQ (Q yy)

   2008-02-05T18:30:30 = 1 08
   1995-12-22T09:05:02 = 4 95
  -0010-09-15T04:44:23 = 3 -10

=head3 yyyyMM (yyyy/MM)

   2008-02-05T18:30:30 = 2008/02
   1995-12-22T09:05:02 = 1995/12
  -0010-09-15T04:44:23 = -010/09

=head3 yyyyMMMM (MMMM y)

   2008-02-05T18:30:30 = Februarie 2008
   1995-12-22T09:05:02 = Desember 1995
  -0010-09-15T04:44:23 = September -10

=head2 Miscellaneous

=head3 Prefers 24 hour time?

No

=head3 Local first day of the week

Maandag


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
