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
# This file was generated from the source file gu_IN.xml
# The source file version number was 1.57, generated on
# 2009/05/05 23:06:36.
#
# Do not edit this file directly.
#
###########################################################################

package DateTime::Locale::gu_IN;

use strict;
use warnings;
use utf8;

use base 'DateTime::Locale::gu';

sub cldr_version { return "1\.7\.1" }

{
    my $first_day_of_week = "7";
    sub first_day_of_week { return $first_day_of_week }
}

{
    my $glibc_date_format = "\%A\ \%d\ \%b\ \%Y";
    sub glibc_date_format { return $glibc_date_format }
}

{
    my $glibc_date_1_format = "\%a\ \%b\ \%e\ \%H\:\%M\:\%S\ \%Z\ \%Y";
    sub glibc_date_1_format { return $glibc_date_1_format }
}

{
    my $glibc_datetime_format = "\%A\ \%d\ \%b\ \%Y\ \%I\:\%M\:\%S\ \%p\ \%Z";
    sub glibc_datetime_format { return $glibc_datetime_format }
}

{
    my $glibc_time_format = "\%I\:\%M\:\%S\ \ \%Z";
    sub glibc_time_format { return $glibc_time_format }
}

{
    my $glibc_time_12_format = "\%I\:\%M\:\%S\ \%p\ \%Z";
    sub glibc_time_12_format { return $glibc_time_12_format }
}

1;

__END__


=pod

=encoding utf8

=head1 NAME

DateTime::Locale::gu_IN

=head1 SYNOPSIS

  use DateTime;

  my $dt = DateTime->now( locale => 'gu_IN' );
  print $dt->month_name();

=head1 DESCRIPTION

This is the DateTime locale package for Gujarati India.

=head1 DATA

This locale inherits from the L<DateTime::Locale::gu> locale.

It contains the following data.

=head2 Days

=head3 Wide (format)

  સોમવાર
  મંગળવાર
  બુધવાર
  ગુરુવાર
  શુક્રવાર
  શનિવાર
  રવિવાર

=head3 Abbreviated (format)

  સોમ
  મંગળ
  બુધ
  ગુરુ
  શુક્ર
  શનિ
  રવિ

=head3 Narrow (format)

  સો
  મં
  બુ
  ગુ
  શુ
  શ
  ર

=head3 Wide (stand-alone)

  સોમવાર
  મંગળવાર
  બુધવાર
  ગુરુવાર
  શુક્રવાર
  શનિવાર
  રવિવાર

=head3 Abbreviated (stand-alone)

  સોમ
  મંગળ
  બુધ
  ગુરુ
  શુક્ર
  શનિ
  રવિ

=head3 Narrow (stand-alone)

  સો
  મં
  બુ
  ગુ
  શુ
  શ
  ર

=head2 Months

=head3 Wide (format)

  જાન્યુઆરી
  ફેબ્રુઆરી
  માર્ચ
  એપ્રિલ
  મે
  જૂન
  જુલાઈ
  ઑગસ્ટ
  સપ્ટેમ્બર
  ઑક્ટ્બર
  નવેમ્બર
  ડિસેમ્બર

=head3 Abbreviated (format)

  જાન્યુ
  ફેબ્રુ
  માર્ચ
  એપ્રિલ
  મે
  જૂન
  જુલાઈ
  ઑગસ્ટ
  સપ્ટે
  ઑક્ટો
  નવે
  ડિસે

=head3 Narrow (format)

  જા
  ફે
  મા
  એ
  મે
  જૂ
  જુ
  ઑ
  સ
  ઑ
  ન
  ડિ

=head3 Wide (stand-alone)

  જાન્યુઆરી
  ફેબ્રુઆરી
  માર્ચ
  એપ્રિલ
  મે
  જૂન
  જુલાઈ
  ઑગસ્ટ
  સપ્ટેમ્બર
  ઑક્ટ્બર
  નવેમ્બર
  ડિસેમ્બર

=head3 Abbreviated (stand-alone)

  જાન્યુ
  ફેબ્રુ
  માર્ચ
  એપ્રિલ
  મે
  જૂન
  જુલાઈ
  ઑગસ્ટ
  સપ્ટે
  ઑક્ટો
  નવે
  ડિસે

=head3 Narrow (stand-alone)

  જા
  ફે
  મા
  એ
  મે
  જૂ
  જુ
  ઑ
  સ
  ઑ
  ન
  ડિ

=head2 Quarters

=head3 Wide (format)

  પહલી ત્રિમાસિક
  બીજી ત્રિમાસિક
  ત્રીજી ત્રિમાસિક
  ચૌથી ત્રિમાસિક

=head3 Abbreviated (format)

  ત્રિમાસિક ૧
  ત્રિમાસિક ૨
  ત્રિમાસિક ૩
  ત્રિમાસિક ૪

=head3 Narrow (format)

  1
  2
  3
  4

=head3 Wide (stand-alone)

  પહલી ત્રિમાસિક
  બીજી ત્રિમાસિક
  ત્રીજી ત્રિમાસિક
  ચૌથી ત્રિમાસિક

=head3 Abbreviated (stand-alone)

  ત્રિમાસિક ૧
  ત્રિમાસિક ૨
  ત્રિમાસિક ૩
  ત્રિમાસિક ૪

=head3 Narrow (stand-alone)

  1
  2
  3
  4

=head2 Eras

=head3 Wide

  ઈસવીસન પૂર્વે
  ઇસવીસન

=head3 Abbreviated

  BCE
  CE

=head3 Narrow

  ઇ સ પુ
  ઇસ

=head2 Date Formats

=head3 Full

   2008-02-05T18:30:30 = મંગળવાર, 5 ફેબ્રુઆરી, 2008
   1995-12-22T09:05:02 = શુક્રવાર, 22 ડિસેમ્બર, 1995
  -0010-09-15T04:44:23 = શનિવાર, 15 સપ્ટેમ્બર, -10

=head3 Long

   2008-02-05T18:30:30 = 5 ફેબ્રુઆરી, 2008
   1995-12-22T09:05:02 = 22 ડિસેમ્બર, 1995
  -0010-09-15T04:44:23 = 15 સપ્ટેમ્બર, -10

=head3 Medium

   2008-02-05T18:30:30 = 5 ફેબ્રુ, 2008
   1995-12-22T09:05:02 = 22 ડિસે, 1995
  -0010-09-15T04:44:23 = 15 સપ્ટે, -10

=head3 Short

   2008-02-05T18:30:30 = 5-02-08
   1995-12-22T09:05:02 = 22-12-95
  -0010-09-15T04:44:23 = 15-09--10

=head3 Default

   2008-02-05T18:30:30 = 5 ફેબ્રુ, 2008
   1995-12-22T09:05:02 = 22 ડિસે, 1995
  -0010-09-15T04:44:23 = 15 સપ્ટે, -10

=head2 Time Formats

=head3 Full

   2008-02-05T18:30:30 = 06:30:30 pm UTC
   1995-12-22T09:05:02 = 09:05:02 am UTC
  -0010-09-15T04:44:23 = 04:44:23 am UTC

=head3 Long

   2008-02-05T18:30:30 = 06:30:30 pm UTC
   1995-12-22T09:05:02 = 09:05:02 am UTC
  -0010-09-15T04:44:23 = 04:44:23 am UTC

=head3 Medium

   2008-02-05T18:30:30 = 06:30:30 pm
   1995-12-22T09:05:02 = 09:05:02 am
  -0010-09-15T04:44:23 = 04:44:23 am

=head3 Short

   2008-02-05T18:30:30 = 06:30 pm
   1995-12-22T09:05:02 = 09:05 am
  -0010-09-15T04:44:23 = 04:44 am

=head3 Default

   2008-02-05T18:30:30 = 06:30:30 pm
   1995-12-22T09:05:02 = 09:05:02 am
  -0010-09-15T04:44:23 = 04:44:23 am

=head2 Datetime Formats

=head3 Full

   2008-02-05T18:30:30 = મંગળવાર, 5 ફેબ્રુઆરી, 2008 06:30:30 pm UTC
   1995-12-22T09:05:02 = શુક્રવાર, 22 ડિસેમ્બર, 1995 09:05:02 am UTC
  -0010-09-15T04:44:23 = શનિવાર, 15 સપ્ટેમ્બર, -10 04:44:23 am UTC

=head3 Long

   2008-02-05T18:30:30 = 5 ફેબ્રુઆરી, 2008 06:30:30 pm UTC
   1995-12-22T09:05:02 = 22 ડિસેમ્બર, 1995 09:05:02 am UTC
  -0010-09-15T04:44:23 = 15 સપ્ટેમ્બર, -10 04:44:23 am UTC

=head3 Medium

   2008-02-05T18:30:30 = 5 ફેબ્રુ, 2008 06:30:30 pm
   1995-12-22T09:05:02 = 22 ડિસે, 1995 09:05:02 am
  -0010-09-15T04:44:23 = 15 સપ્ટે, -10 04:44:23 am

=head3 Short

   2008-02-05T18:30:30 = 5-02-08 06:30 pm
   1995-12-22T09:05:02 = 22-12-95 09:05 am
  -0010-09-15T04:44:23 = 15-09--10 04:44 am

=head3 Default

   2008-02-05T18:30:30 = 5 ફેબ્રુ, 2008 06:30:30 pm
   1995-12-22T09:05:02 = 22 ડિસે, 1995 09:05:02 am
  -0010-09-15T04:44:23 = 15 સપ્ટે, -10 04:44:23 am

=head2 Available Formats

=head3 d (d)

   2008-02-05T18:30:30 = 5
   1995-12-22T09:05:02 = 22
  -0010-09-15T04:44:23 = 15

=head3 EEEd (d EEE)

   2008-02-05T18:30:30 = 5 મંગળ
   1995-12-22T09:05:02 = 22 શુક્ર
  -0010-09-15T04:44:23 = 15 શનિ

=head3 Hm (H:mm)

   2008-02-05T18:30:30 = 18:30
   1995-12-22T09:05:02 = 9:05
  -0010-09-15T04:44:23 = 4:44

=head3 hm (h:mm a)

   2008-02-05T18:30:30 = 6:30 pm
   1995-12-22T09:05:02 = 9:05 am
  -0010-09-15T04:44:23 = 4:44 am

=head3 Hms (H:mm:ss)

   2008-02-05T18:30:30 = 18:30:30
   1995-12-22T09:05:02 = 9:05:02
  -0010-09-15T04:44:23 = 4:44:23

=head3 hms (h:mm:ss a)

   2008-02-05T18:30:30 = 6:30:30 pm
   1995-12-22T09:05:02 = 9:05:02 am
  -0010-09-15T04:44:23 = 4:44:23 am

=head3 M (L)

   2008-02-05T18:30:30 = 2
   1995-12-22T09:05:02 = 12
  -0010-09-15T04:44:23 = 9

=head3 Md (M-d)

   2008-02-05T18:30:30 = 2-5
   1995-12-22T09:05:02 = 12-22
  -0010-09-15T04:44:23 = 9-15

=head3 MEd (E, M-d)

   2008-02-05T18:30:30 = મંગળ, 2-5
   1995-12-22T09:05:02 = શુક્ર, 12-22
  -0010-09-15T04:44:23 = શનિ, 9-15

=head3 MMdd (dd-MM)

   2008-02-05T18:30:30 = 05-02
   1995-12-22T09:05:02 = 22-12
  -0010-09-15T04:44:23 = 15-09

=head3 MMM (LLL)

   2008-02-05T18:30:30 = ફેબ્રુ
   1995-12-22T09:05:02 = ડિસે
  -0010-09-15T04:44:23 = સપ્ટે

=head3 MMMd (MMM d)

   2008-02-05T18:30:30 = ફેબ્રુ 5
   1995-12-22T09:05:02 = ડિસે 22
  -0010-09-15T04:44:23 = સપ્ટે 15

=head3 MMMEd (E MMM d)

   2008-02-05T18:30:30 = મંગળ ફેબ્રુ 5
   1995-12-22T09:05:02 = શુક્ર ડિસે 22
  -0010-09-15T04:44:23 = શનિ સપ્ટે 15

=head3 MMMMd (d MMMM)

   2008-02-05T18:30:30 = 5 ફેબ્રુઆરી
   1995-12-22T09:05:02 = 22 ડિસેમ્બર
  -0010-09-15T04:44:23 = 15 સપ્ટેમ્બર

=head3 MMMMEd (E MMMM d)

   2008-02-05T18:30:30 = મંગળ ફેબ્રુઆરી 5
   1995-12-22T09:05:02 = શુક્ર ડિસેમ્બર 22
  -0010-09-15T04:44:23 = શનિ સપ્ટેમ્બર 15

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

   2008-02-05T18:30:30 = મંગળ, 2008-2-5
   1995-12-22T09:05:02 = શુક્ર, 1995-12-22
  -0010-09-15T04:44:23 = શનિ, -10-9-15

=head3 yMMM (y MMM)

   2008-02-05T18:30:30 = 2008 ફેબ્રુ
   1995-12-22T09:05:02 = 1995 ડિસે
  -0010-09-15T04:44:23 = -10 સપ્ટે

=head3 yMMMEd (EEE, y MMM d)

   2008-02-05T18:30:30 = મંગળ, 2008 ફેબ્રુ 5
   1995-12-22T09:05:02 = શુક્ર, 1995 ડિસે 22
  -0010-09-15T04:44:23 = શનિ, -10 સપ્ટે 15

=head3 yMMMM (y MMMM)

   2008-02-05T18:30:30 = 2008 ફેબ્રુઆરી
   1995-12-22T09:05:02 = 1995 ડિસેમ્બર
  -0010-09-15T04:44:23 = -10 સપ્ટેમ્બર

=head3 yQ (y Q)

   2008-02-05T18:30:30 = 2008 1
   1995-12-22T09:05:02 = 1995 4
  -0010-09-15T04:44:23 = -10 3

=head3 yQQQ (y QQQ)

   2008-02-05T18:30:30 = 2008 ત્રિમાસિક ૧
   1995-12-22T09:05:02 = 1995 ત્રિમાસિક ૪
  -0010-09-15T04:44:23 = -10 ત્રિમાસિક ૩

=head3 yyQ (Q yy)

   2008-02-05T18:30:30 = 1 08
   1995-12-22T09:05:02 = 4 95
  -0010-09-15T04:44:23 = 3 -10

=head3 yyyyMM (MM-yyyy)

   2008-02-05T18:30:30 = 02-2008
   1995-12-22T09:05:02 = 12-1995
  -0010-09-15T04:44:23 = 09--010

=head3 yyyyMMMM (MMMM y)

   2008-02-05T18:30:30 = ફેબ્રુઆરી 2008
   1995-12-22T09:05:02 = ડિસેમ્બર 1995
  -0010-09-15T04:44:23 = સપ્ટેમ્બર -10

=head2 Miscellaneous

=head3 Prefers 24 hour time?

No

=head3 Local first day of the week

રવિવાર


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
