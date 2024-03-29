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
# This file was generated from the source file mt.xml
# The source file version number was 1.91, generated on
# 2009/06/15 03:46:25.
#
# Do not edit this file directly.
#
###########################################################################

package DateTime::Locale::mt;

use strict;
use warnings;
use utf8;

use base 'DateTime::Locale::root';

sub cldr_version { return "1\.7\.1" }

{
    my $am_pm_abbreviated = [ "QN", "WN" ];
    sub am_pm_abbreviated { return $am_pm_abbreviated }
}
{
    my $date_format_full = "EEEE\,\ d\ \'ta\'’\ MMMM\ y";
    sub date_format_full { return $date_format_full }
}

{
    my $date_format_long = "d\ \'ta\'’\ MMMM\ y";
    sub date_format_long { return $date_format_long }
}

{
    my $date_format_medium = "dd\ MMM\ y";
    sub date_format_medium { return $date_format_medium }
}

{
    my $date_format_short = "dd\/MM\/yyyy";
    sub date_format_short { return $date_format_short }
}

{
    my $day_format_abbreviated = [ "Tne", "Tli", "Erb", "Ħam", "Ġim", "Sib", "Ħad" ];
    sub day_format_abbreviated { return $day_format_abbreviated }
}

sub day_format_narrow { $_[0]->day_stand_alone_narrow() }

{
    my $day_format_wide = [ "It\-Tnejn", "It\-Tlieta", "L\-Erbgħa", "Il\-Ħamis", "Il\-Ġimgħa", "Is\-Sibt", "Il\-Ħadd" ];
    sub day_format_wide { return $day_format_wide }
}

sub day_stand_alone_abbreviated { $_[0]->day_format_abbreviated() }

{
    my $day_stand_alone_narrow = [ "T", "T", "E", "Ħ", "Ġ", "S", "Ħ" ];
    sub day_stand_alone_narrow { return $day_stand_alone_narrow }
}

sub day_stand_alone_wide { $_[0]->day_format_wide() }

{
    my $era_abbreviated = [ "QK", "WK" ];
    sub era_abbreviated { return $era_abbreviated }
}

sub era_narrow { $_[0]->era_abbreviated() }

{
    my $era_wide = [ "Qabel\ Kristu", "Wara\ Kristu" ];
    sub era_wide { return $era_wide }
}
{
    my $first_day_of_week = "1";
    sub first_day_of_week { return $first_day_of_week }
}

{
    my $month_format_abbreviated = [ "Jan", "Fra", "Mar", "Apr", "Mej", "Ġun", "Lul", "Aww", "Set", "Ott", "Nov", "Diċ" ];
    sub month_format_abbreviated { return $month_format_abbreviated }
}

sub month_format_narrow { $_[0]->month_stand_alone_narrow() }

{
    my $month_format_wide = [ "Jannar", "Frar", "Marzu", "April", "Mejju", "Ġunju", "Lulju", "Awwissu", "Settembru", "Ottubru", "Novembru", "Diċembru" ];
    sub month_format_wide { return $month_format_wide }
}

sub month_stand_alone_abbreviated { $_[0]->month_format_abbreviated() }

{
    my $month_stand_alone_narrow = [ "J", "F", "M", "A", "M", "Ġ", "L", "A", "S", "O", "N", "D" ];
    sub month_stand_alone_narrow { return $month_stand_alone_narrow }
}

sub month_stand_alone_wide { $_[0]->month_format_wide() }

{
    my $quarter_format_abbreviated = [ "K1", "K2", "K3", "K4" ];
    sub quarter_format_abbreviated { return $quarter_format_abbreviated }
}
{
    my $quarter_format_wide = [ "K1", "K2", "K3", "K4" ];
    sub quarter_format_wide { return $quarter_format_wide }
}

sub quarter_stand_alone_abbreviated { $_[0]->quarter_format_abbreviated() }


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
    my $time_format_medium = "HH\:mm\:ss";
    sub time_format_medium { return $time_format_medium }
}

{
    my $time_format_short = "HH\:mm";
    sub time_format_short { return $time_format_short }
}

{
    my $_format_for_MMMMd = "d\ \'ta\'’\ MMMM";
    sub _format_for_MMMMd { return $_format_for_MMMMd }
}

{
    my $_format_for_MMdd = "dd\/MM";
    sub _format_for_MMdd { return $_format_for_MMdd }
}

{
    my $_format_for_yyQ = "Q\ yy";
    sub _format_for_yyQ { return $_format_for_yyQ }
}

{
    my $_format_for_yyyyMM = "MM\/yyyy";
    sub _format_for_yyyyMM { return $_format_for_yyyyMM }
}

{
    my $_format_for_yyyyMMM = "MMM\ y";
    sub _format_for_yyyyMMM { return $_format_for_yyyyMMM }
}

{
    my $_available_formats =
        {
          "MMMMd" => "d\ \'ta\'’\ MMMM",
          "MMdd" => "dd\/MM",
          "yyQ" => "Q\ yy",
          "yyyyMM" => "MM\/yyyy",
          "yyyyMMM" => "MMM\ y"
        };
    sub _available_formats { return $_available_formats }
}

1;

__END__


=pod

=encoding utf8

=head1 NAME

DateTime::Locale::mt

=head1 SYNOPSIS

  use DateTime;

  my $dt = DateTime->now( locale => 'mt' );
  print $dt->month_name();

=head1 DESCRIPTION

This is the DateTime locale package for Maltese.

=head1 DATA

This locale inherits from the L<DateTime::Locale::root> locale.

It contains the following data.

=head2 Days

=head3 Wide (format)

  It-Tnejn
  It-Tlieta
  L-Erbgħa
  Il-Ħamis
  Il-Ġimgħa
  Is-Sibt
  Il-Ħadd

=head3 Abbreviated (format)

  Tne
  Tli
  Erb
  Ħam
  Ġim
  Sib
  Ħad

=head3 Narrow (format)

  T
  T
  E
  Ħ
  Ġ
  S
  Ħ

=head3 Wide (stand-alone)

  It-Tnejn
  It-Tlieta
  L-Erbgħa
  Il-Ħamis
  Il-Ġimgħa
  Is-Sibt
  Il-Ħadd

=head3 Abbreviated (stand-alone)

  Tne
  Tli
  Erb
  Ħam
  Ġim
  Sib
  Ħad

=head3 Narrow (stand-alone)

  T
  T
  E
  Ħ
  Ġ
  S
  Ħ

=head2 Months

=head3 Wide (format)

  Jannar
  Frar
  Marzu
  April
  Mejju
  Ġunju
  Lulju
  Awwissu
  Settembru
  Ottubru
  Novembru
  Diċembru

=head3 Abbreviated (format)

  Jan
  Fra
  Mar
  Apr
  Mej
  Ġun
  Lul
  Aww
  Set
  Ott
  Nov
  Diċ

=head3 Narrow (format)

  J
  F
  M
  A
  M
  Ġ
  L
  A
  S
  O
  N
  D

=head3 Wide (stand-alone)

  Jannar
  Frar
  Marzu
  April
  Mejju
  Ġunju
  Lulju
  Awwissu
  Settembru
  Ottubru
  Novembru
  Diċembru

=head3 Abbreviated (stand-alone)

  Jan
  Fra
  Mar
  Apr
  Mej
  Ġun
  Lul
  Aww
  Set
  Ott
  Nov
  Diċ

=head3 Narrow (stand-alone)

  J
  F
  M
  A
  M
  Ġ
  L
  A
  S
  O
  N
  D

=head2 Quarters

=head3 Wide (format)

  K1
  K2
  K3
  K4

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

  K1
  K2
  K3
  K4

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

  Qabel Kristu
  Wara Kristu

=head3 Abbreviated

  QK
  WK

=head3 Narrow

  QK
  WK

=head2 Date Formats

=head3 Full

   2008-02-05T18:30:30 = It-Tlieta, 5 ta’ Frar 2008
   1995-12-22T09:05:02 = Il-Ġimgħa, 22 ta’ Diċembru 1995
  -0010-09-15T04:44:23 = Is-Sibt, 15 ta’ Settembru -10

=head3 Long

   2008-02-05T18:30:30 = 5 ta’ Frar 2008
   1995-12-22T09:05:02 = 22 ta’ Diċembru 1995
  -0010-09-15T04:44:23 = 15 ta’ Settembru -10

=head3 Medium

   2008-02-05T18:30:30 = 05 Fra 2008
   1995-12-22T09:05:02 = 22 Diċ 1995
  -0010-09-15T04:44:23 = 15 Set -10

=head3 Short

   2008-02-05T18:30:30 = 05/02/2008
   1995-12-22T09:05:02 = 22/12/1995
  -0010-09-15T04:44:23 = 15/09/-010

=head3 Default

   2008-02-05T18:30:30 = 05 Fra 2008
   1995-12-22T09:05:02 = 22 Diċ 1995
  -0010-09-15T04:44:23 = 15 Set -10

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

   2008-02-05T18:30:30 = It-Tlieta, 5 ta’ Frar 2008 18:30:30 UTC
   1995-12-22T09:05:02 = Il-Ġimgħa, 22 ta’ Diċembru 1995 09:05:02 UTC
  -0010-09-15T04:44:23 = Is-Sibt, 15 ta’ Settembru -10 04:44:23 UTC

=head3 Long

   2008-02-05T18:30:30 = 5 ta’ Frar 2008 18:30:30 UTC
   1995-12-22T09:05:02 = 22 ta’ Diċembru 1995 09:05:02 UTC
  -0010-09-15T04:44:23 = 15 ta’ Settembru -10 04:44:23 UTC

=head3 Medium

   2008-02-05T18:30:30 = 05 Fra 2008 18:30:30
   1995-12-22T09:05:02 = 22 Diċ 1995 09:05:02
  -0010-09-15T04:44:23 = 15 Set -10 04:44:23

=head3 Short

   2008-02-05T18:30:30 = 05/02/2008 18:30
   1995-12-22T09:05:02 = 22/12/1995 09:05
  -0010-09-15T04:44:23 = 15/09/-010 04:44

=head3 Default

   2008-02-05T18:30:30 = 05 Fra 2008 18:30:30
   1995-12-22T09:05:02 = 22 Diċ 1995 09:05:02
  -0010-09-15T04:44:23 = 15 Set -10 04:44:23

=head2 Available Formats

=head3 d (d)

   2008-02-05T18:30:30 = 5
   1995-12-22T09:05:02 = 22
  -0010-09-15T04:44:23 = 15

=head3 EEEd (d EEE)

   2008-02-05T18:30:30 = 5 Tli
   1995-12-22T09:05:02 = 22 Ġim
  -0010-09-15T04:44:23 = 15 Sib

=head3 Hm (H:mm)

   2008-02-05T18:30:30 = 18:30
   1995-12-22T09:05:02 = 9:05
  -0010-09-15T04:44:23 = 4:44

=head3 hm (h:mm a)

   2008-02-05T18:30:30 = 6:30 WN
   1995-12-22T09:05:02 = 9:05 QN
  -0010-09-15T04:44:23 = 4:44 QN

=head3 Hms (H:mm:ss)

   2008-02-05T18:30:30 = 18:30:30
   1995-12-22T09:05:02 = 9:05:02
  -0010-09-15T04:44:23 = 4:44:23

=head3 hms (h:mm:ss a)

   2008-02-05T18:30:30 = 6:30:30 WN
   1995-12-22T09:05:02 = 9:05:02 QN
  -0010-09-15T04:44:23 = 4:44:23 QN

=head3 M (L)

   2008-02-05T18:30:30 = 2
   1995-12-22T09:05:02 = 12
  -0010-09-15T04:44:23 = 9

=head3 Md (M-d)

   2008-02-05T18:30:30 = 2-5
   1995-12-22T09:05:02 = 12-22
  -0010-09-15T04:44:23 = 9-15

=head3 MEd (E, M-d)

   2008-02-05T18:30:30 = Tli, 2-5
   1995-12-22T09:05:02 = Ġim, 12-22
  -0010-09-15T04:44:23 = Sib, 9-15

=head3 MMdd (dd/MM)

   2008-02-05T18:30:30 = 05/02
   1995-12-22T09:05:02 = 22/12
  -0010-09-15T04:44:23 = 15/09

=head3 MMM (LLL)

   2008-02-05T18:30:30 = Fra
   1995-12-22T09:05:02 = Diċ
  -0010-09-15T04:44:23 = Set

=head3 MMMd (MMM d)

   2008-02-05T18:30:30 = Fra 5
   1995-12-22T09:05:02 = Diċ 22
  -0010-09-15T04:44:23 = Set 15

=head3 MMMEd (E MMM d)

   2008-02-05T18:30:30 = Tli Fra 5
   1995-12-22T09:05:02 = Ġim Diċ 22
  -0010-09-15T04:44:23 = Sib Set 15

=head3 MMMMd (d 'ta'’ MMMM)

   2008-02-05T18:30:30 = 5 ta’ Frar
   1995-12-22T09:05:02 = 22 ta’ Diċembru
  -0010-09-15T04:44:23 = 15 ta’ Settembru

=head3 MMMMEd (E MMMM d)

   2008-02-05T18:30:30 = Tli Frar 5
   1995-12-22T09:05:02 = Ġim Diċembru 22
  -0010-09-15T04:44:23 = Sib Settembru 15

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

   2008-02-05T18:30:30 = Tli, 2008-2-5
   1995-12-22T09:05:02 = Ġim, 1995-12-22
  -0010-09-15T04:44:23 = Sib, -10-9-15

=head3 yMMM (y MMM)

   2008-02-05T18:30:30 = 2008 Fra
   1995-12-22T09:05:02 = 1995 Diċ
  -0010-09-15T04:44:23 = -10 Set

=head3 yMMMEd (EEE, y MMM d)

   2008-02-05T18:30:30 = Tli, 2008 Fra 5
   1995-12-22T09:05:02 = Ġim, 1995 Diċ 22
  -0010-09-15T04:44:23 = Sib, -10 Set 15

=head3 yMMMM (y MMMM)

   2008-02-05T18:30:30 = 2008 Frar
   1995-12-22T09:05:02 = 1995 Diċembru
  -0010-09-15T04:44:23 = -10 Settembru

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

=head3 yyyyMM (MM/yyyy)

   2008-02-05T18:30:30 = 02/2008
   1995-12-22T09:05:02 = 12/1995
  -0010-09-15T04:44:23 = 09/-010

=head3 yyyyMMM (MMM y)

   2008-02-05T18:30:30 = Fra 2008
   1995-12-22T09:05:02 = Diċ 1995
  -0010-09-15T04:44:23 = Set -10

=head2 Miscellaneous

=head3 Prefers 24 hour time?

Yes

=head3 Local first day of the week

It-Tnejn


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
