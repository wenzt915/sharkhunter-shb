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
# This file was generated from the source file cs.xml
# The source file version number was 1.132, generated on
# 2009/06/15 03:46:23.
#
# Do not edit this file directly.
#
###########################################################################

package DateTime::Locale::cs;

use strict;
use warnings;
use utf8;

use base 'DateTime::Locale::root';

sub cldr_version { return "1\.7\.1" }

{
    my $am_pm_abbreviated = [ "dop\.", "odp\." ];
    sub am_pm_abbreviated { return $am_pm_abbreviated }
}
{
    my $date_format_full = "EEEE\,\ d\.\ MMMM\ y";
    sub date_format_full { return $date_format_full }
}

{
    my $date_format_long = "d\.\ MMMM\ y";
    sub date_format_long { return $date_format_long }
}

{
    my $date_format_medium = "d\.M\.yyyy";
    sub date_format_medium { return $date_format_medium }
}

{
    my $date_format_short = "d\.M\.yy";
    sub date_format_short { return $date_format_short }
}

{
    my $day_format_abbreviated = [ "po", "út", "st", "čt", "pá", "so", "ne" ];
    sub day_format_abbreviated { return $day_format_abbreviated }
}

sub day_format_narrow { $_[0]->day_stand_alone_narrow() }

{
    my $day_format_wide = [ "pondělí", "úterý", "středa", "čtvrtek", "pátek", "sobota", "neděle" ];
    sub day_format_wide { return $day_format_wide }
}

sub day_stand_alone_abbreviated { $_[0]->day_format_abbreviated() }

{
    my $day_stand_alone_narrow = [ "P", "Ú", "S", "Č", "P", "S", "N" ];
    sub day_stand_alone_narrow { return $day_stand_alone_narrow }
}

sub day_stand_alone_wide { $_[0]->day_format_wide() }

{
    my $era_abbreviated = [ "př\.Kr\.", "po\ Kr\." ];
    sub era_abbreviated { return $era_abbreviated }
}

sub era_narrow { $_[0]->era_abbreviated() }

{
    my $first_day_of_week = "1";
    sub first_day_of_week { return $first_day_of_week }
}

{
    my $month_format_abbreviated = [ "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12" ];
    sub month_format_abbreviated { return $month_format_abbreviated }
}

sub month_format_narrow { $_[0]->month_stand_alone_narrow() }

{
    my $month_format_wide = [ "ledna", "února", "března", "dubna", "května", "června", "července", "srpna", "září", "října", "listopadu", "prosince" ];
    sub month_format_wide { return $month_format_wide }
}
{
    my $month_stand_alone_abbreviated = [ "1\.", "2\.", "3\.", "4\.", "5\.", "6\.", "7\.", "8\.", "9\.", "10\.", "11\.", "12\." ];
    sub month_stand_alone_abbreviated { return $month_stand_alone_abbreviated }
}
{
    my $month_stand_alone_narrow = [ "l", "ú", "b", "d", "k", "č", "č", "s", "z", "ř", "l", "p" ];
    sub month_stand_alone_narrow { return $month_stand_alone_narrow }
}
{
    my $month_stand_alone_wide = [ "leden", "únor", "březen", "duben", "květen", "červen", "červenec", "srpen", "září", "říjen", "listopad", "prosinec" ];
    sub month_stand_alone_wide { return $month_stand_alone_wide }
}
{
    my $quarter_format_abbreviated = [ "Q1", "Q2", "Q3", "Q4" ];
    sub quarter_format_abbreviated { return $quarter_format_abbreviated }
}

sub quarter_format_narrow { $_[0]->quarter_stand_alone_narrow() }

{
    my $quarter_format_wide = [ "1\.\ čtvrtletí", "2\.\ čtvrtletí", "3\.\ čtvrtletí", "4\.\ čtvrtletí" ];
    sub quarter_format_wide { return $quarter_format_wide }
}

sub quarter_stand_alone_abbreviated { $_[0]->quarter_format_abbreviated() }

{
    my $quarter_stand_alone_narrow = [ "1", "2", "3", "4" ];
    sub quarter_stand_alone_narrow { return $quarter_stand_alone_narrow }
}

sub quarter_stand_alone_wide { $_[0]->quarter_format_wide() }

{
    my $time_format_full = "HH\:mm\:ss\ zzzz";
    sub time_format_full { return $time_format_full }
}

{
    my $time_format_long = "HH\:mm\:ss\ z";
    sub time_format_long { return $time_format_long }
}

{
    my $time_format_medium = "H\:mm\:ss";
    sub time_format_medium { return $time_format_medium }
}

{
    my $time_format_short = "H\:mm";
    sub time_format_short { return $time_format_short }
}

{
    my $_format_for_H = "H";
    sub _format_for_H { return $_format_for_H }
}

{
    my $_format_for_HHmm = "HH\:mm";
    sub _format_for_HHmm { return $_format_for_HHmm }
}

{
    my $_format_for_HHmmss = "HH\:mm\:ss";
    sub _format_for_HHmmss { return $_format_for_HHmmss }
}

{
    my $_format_for_MMMMd = "d\.\ MMMM";
    sub _format_for_MMMMd { return $_format_for_MMMMd }
}

{
    my $_format_for_Md = "d\.M";
    sub _format_for_Md { return $_format_for_Md }
}

{
    my $_format_for_mmss = "mm\:ss";
    sub _format_for_mmss { return $_format_for_mmss }
}

{
    my $_format_for_yyQ = "Q\ yy";
    sub _format_for_yyQ { return $_format_for_yyQ }
}

{
    my $_format_for_yyyy = "y";
    sub _format_for_yyyy { return $_format_for_yyyy }
}

{
    my $_format_for_yyyyM = "M\.yyyy";
    sub _format_for_yyyyM { return $_format_for_yyyyM }
}

{
    my $_format_for_yyyyMMMM = "MMMM\ y";
    sub _format_for_yyyyMMMM { return $_format_for_yyyyMMMM }
}

{
    my $_available_formats =
        {
          "H" => "H",
          "HHmm" => "HH\:mm",
          "HHmmss" => "HH\:mm\:ss",
          "MMMMd" => "d\.\ MMMM",
          "Md" => "d\.M",
          "mmss" => "mm\:ss",
          "yyQ" => "Q\ yy",
          "yyyy" => "y",
          "yyyyM" => "M\.yyyy",
          "yyyyMMMM" => "MMMM\ y"
        };
    sub _available_formats { return $_available_formats }
}

1;

__END__


=pod

=encoding utf8

=head1 NAME

DateTime::Locale::cs

=head1 SYNOPSIS

  use DateTime;

  my $dt = DateTime->now( locale => 'cs' );
  print $dt->month_name();

=head1 DESCRIPTION

This is the DateTime locale package for Czech.

=head1 DATA

This locale inherits from the L<DateTime::Locale::root> locale.

It contains the following data.

=head2 Days

=head3 Wide (format)

  pondělí
  úterý
  středa
  čtvrtek
  pátek
  sobota
  neděle

=head3 Abbreviated (format)

  po
  út
  st
  čt
  pá
  so
  ne

=head3 Narrow (format)

  P
  Ú
  S
  Č
  P
  S
  N

=head3 Wide (stand-alone)

  pondělí
  úterý
  středa
  čtvrtek
  pátek
  sobota
  neděle

=head3 Abbreviated (stand-alone)

  po
  út
  st
  čt
  pá
  so
  ne

=head3 Narrow (stand-alone)

  P
  Ú
  S
  Č
  P
  S
  N

=head2 Months

=head3 Wide (format)

  ledna
  února
  března
  dubna
  května
  června
  července
  srpna
  září
  října
  listopadu
  prosince

=head3 Abbreviated (format)

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

=head3 Narrow (format)

  l
  ú
  b
  d
  k
  č
  č
  s
  z
  ř
  l
  p

=head3 Wide (stand-alone)

  leden
  únor
  březen
  duben
  květen
  červen
  červenec
  srpen
  září
  říjen
  listopad
  prosinec

=head3 Abbreviated (stand-alone)

  1.
  2.
  3.
  4.
  5.
  6.
  7.
  8.
  9.
  10.
  11.
  12.

=head3 Narrow (stand-alone)

  l
  ú
  b
  d
  k
  č
  č
  s
  z
  ř
  l
  p

=head2 Quarters

=head3 Wide (format)

  1. čtvrtletí
  2. čtvrtletí
  3. čtvrtletí
  4. čtvrtletí

=head3 Abbreviated (format)

  Q1
  Q2
  Q3
  Q4

=head3 Narrow (format)

  1
  2
  3
  4

=head3 Wide (stand-alone)

  1. čtvrtletí
  2. čtvrtletí
  3. čtvrtletí
  4. čtvrtletí

=head3 Abbreviated (stand-alone)

  Q1
  Q2
  Q3
  Q4

=head3 Narrow (stand-alone)

  1
  2
  3
  4

=head2 Eras

=head3 Wide

  BCE
  CE

=head3 Abbreviated

  př.Kr.
  po Kr.

=head3 Narrow

  př.Kr.
  po Kr.

=head2 Date Formats

=head3 Full

   2008-02-05T18:30:30 = úterý, 5. února 2008
   1995-12-22T09:05:02 = pátek, 22. prosince 1995
  -0010-09-15T04:44:23 = sobota, 15. září -10

=head3 Long

   2008-02-05T18:30:30 = 5. února 2008
   1995-12-22T09:05:02 = 22. prosince 1995
  -0010-09-15T04:44:23 = 15. září -10

=head3 Medium

   2008-02-05T18:30:30 = 5.2.2008
   1995-12-22T09:05:02 = 22.12.1995
  -0010-09-15T04:44:23 = 15.9.-010

=head3 Short

   2008-02-05T18:30:30 = 5.2.08
   1995-12-22T09:05:02 = 22.12.95
  -0010-09-15T04:44:23 = 15.9.-10

=head3 Default

   2008-02-05T18:30:30 = 5.2.2008
   1995-12-22T09:05:02 = 22.12.1995
  -0010-09-15T04:44:23 = 15.9.-010

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
   1995-12-22T09:05:02 = 9:05:02
  -0010-09-15T04:44:23 = 4:44:23

=head3 Short

   2008-02-05T18:30:30 = 18:30
   1995-12-22T09:05:02 = 9:05
  -0010-09-15T04:44:23 = 4:44

=head3 Default

   2008-02-05T18:30:30 = 18:30:30
   1995-12-22T09:05:02 = 9:05:02
  -0010-09-15T04:44:23 = 4:44:23

=head2 Datetime Formats

=head3 Full

   2008-02-05T18:30:30 = úterý, 5. února 2008 18:30:30 UTC
   1995-12-22T09:05:02 = pátek, 22. prosince 1995 09:05:02 UTC
  -0010-09-15T04:44:23 = sobota, 15. září -10 04:44:23 UTC

=head3 Long

   2008-02-05T18:30:30 = 5. února 2008 18:30:30 UTC
   1995-12-22T09:05:02 = 22. prosince 1995 09:05:02 UTC
  -0010-09-15T04:44:23 = 15. září -10 04:44:23 UTC

=head3 Medium

   2008-02-05T18:30:30 = 5.2.2008 18:30:30
   1995-12-22T09:05:02 = 22.12.1995 9:05:02
  -0010-09-15T04:44:23 = 15.9.-010 4:44:23

=head3 Short

   2008-02-05T18:30:30 = 5.2.08 18:30
   1995-12-22T09:05:02 = 22.12.95 9:05
  -0010-09-15T04:44:23 = 15.9.-10 4:44

=head3 Default

   2008-02-05T18:30:30 = 5.2.2008 18:30:30
   1995-12-22T09:05:02 = 22.12.1995 9:05:02
  -0010-09-15T04:44:23 = 15.9.-010 4:44:23

=head2 Available Formats

=head3 d (d)

   2008-02-05T18:30:30 = 5
   1995-12-22T09:05:02 = 22
  -0010-09-15T04:44:23 = 15

=head3 EEEd (d EEE)

   2008-02-05T18:30:30 = 5 út
   1995-12-22T09:05:02 = 22 pá
  -0010-09-15T04:44:23 = 15 so

=head3 H (H)

   2008-02-05T18:30:30 = 18
   1995-12-22T09:05:02 = 9
  -0010-09-15T04:44:23 = 4

=head3 HHmm (HH:mm)

   2008-02-05T18:30:30 = 18:30
   1995-12-22T09:05:02 = 09:05
  -0010-09-15T04:44:23 = 04:44

=head3 HHmmss (HH:mm:ss)

   2008-02-05T18:30:30 = 18:30:30
   1995-12-22T09:05:02 = 09:05:02
  -0010-09-15T04:44:23 = 04:44:23

=head3 Hm (H:mm)

   2008-02-05T18:30:30 = 18:30
   1995-12-22T09:05:02 = 9:05
  -0010-09-15T04:44:23 = 4:44

=head3 hm (h:mm a)

   2008-02-05T18:30:30 = 6:30 odp.
   1995-12-22T09:05:02 = 9:05 dop.
  -0010-09-15T04:44:23 = 4:44 dop.

=head3 Hms (H:mm:ss)

   2008-02-05T18:30:30 = 18:30:30
   1995-12-22T09:05:02 = 9:05:02
  -0010-09-15T04:44:23 = 4:44:23

=head3 hms (h:mm:ss a)

   2008-02-05T18:30:30 = 6:30:30 odp.
   1995-12-22T09:05:02 = 9:05:02 dop.
  -0010-09-15T04:44:23 = 4:44:23 dop.

=head3 M (L)

   2008-02-05T18:30:30 = 2
   1995-12-22T09:05:02 = 12
  -0010-09-15T04:44:23 = 9

=head3 Md (d.M)

   2008-02-05T18:30:30 = 5.2
   1995-12-22T09:05:02 = 22.12
  -0010-09-15T04:44:23 = 15.9

=head3 MEd (E, M-d)

   2008-02-05T18:30:30 = út, 2-5
   1995-12-22T09:05:02 = pá, 12-22
  -0010-09-15T04:44:23 = so, 9-15

=head3 MMM (LLL)

   2008-02-05T18:30:30 = 2.
   1995-12-22T09:05:02 = 12.
  -0010-09-15T04:44:23 = 9.

=head3 MMMd (MMM d)

   2008-02-05T18:30:30 = 2 5
   1995-12-22T09:05:02 = 12 22
  -0010-09-15T04:44:23 = 9 15

=head3 MMMEd (E MMM d)

   2008-02-05T18:30:30 = út 2 5
   1995-12-22T09:05:02 = pá 12 22
  -0010-09-15T04:44:23 = so 9 15

=head3 MMMMd (d. MMMM)

   2008-02-05T18:30:30 = 5. února
   1995-12-22T09:05:02 = 22. prosince
  -0010-09-15T04:44:23 = 15. září

=head3 MMMMEd (E MMMM d)

   2008-02-05T18:30:30 = út února 5
   1995-12-22T09:05:02 = pá prosince 22
  -0010-09-15T04:44:23 = so září 15

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

=head3 yM (y-M)

   2008-02-05T18:30:30 = 2008-2
   1995-12-22T09:05:02 = 1995-12
  -0010-09-15T04:44:23 = -10-9

=head3 yMEd (EEE, y-M-d)

   2008-02-05T18:30:30 = út, 2008-2-5
   1995-12-22T09:05:02 = pá, 1995-12-22
  -0010-09-15T04:44:23 = so, -10-9-15

=head3 yMMM (y MMM)

   2008-02-05T18:30:30 = 2008 2
   1995-12-22T09:05:02 = 1995 12
  -0010-09-15T04:44:23 = -10 9

=head3 yMMMEd (EEE, y MMM d)

   2008-02-05T18:30:30 = út, 2008 2 5
   1995-12-22T09:05:02 = pá, 1995 12 22
  -0010-09-15T04:44:23 = so, -10 9 15

=head3 yMMMM (y MMMM)

   2008-02-05T18:30:30 = 2008 února
   1995-12-22T09:05:02 = 1995 prosince
  -0010-09-15T04:44:23 = -10 září

=head3 yQ (y Q)

   2008-02-05T18:30:30 = 2008 1
   1995-12-22T09:05:02 = 1995 4
  -0010-09-15T04:44:23 = -10 3

=head3 yQQQ (y QQQ)

   2008-02-05T18:30:30 = 2008 Q1
   1995-12-22T09:05:02 = 1995 Q4
  -0010-09-15T04:44:23 = -10 Q3

=head3 yyQ (Q yy)

   2008-02-05T18:30:30 = 1 08
   1995-12-22T09:05:02 = 4 95
  -0010-09-15T04:44:23 = 3 -10

=head3 yyyy (y)

   2008-02-05T18:30:30 = 2008
   1995-12-22T09:05:02 = 1995
  -0010-09-15T04:44:23 = -10

=head3 yyyyM (M.yyyy)

   2008-02-05T18:30:30 = 2.2008
   1995-12-22T09:05:02 = 12.1995
  -0010-09-15T04:44:23 = 9.-010

=head3 yyyyMMMM (MMMM y)

   2008-02-05T18:30:30 = února 2008
   1995-12-22T09:05:02 = prosince 1995
  -0010-09-15T04:44:23 = září -10

=head2 Miscellaneous

=head3 Prefers 24 hour time?

Yes

=head3 Local first day of the week

pondělí


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
