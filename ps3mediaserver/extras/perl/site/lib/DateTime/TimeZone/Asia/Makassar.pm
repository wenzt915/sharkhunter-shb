# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.07) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from ../DateTime/data/Olson/2011i/asia.  Olson data version 2011i
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Asia::Makassar;
{
  $DateTime::TimeZone::Asia::Makassar::VERSION = '1.36';
}

use strict;

use Class::Singleton;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Asia::Makassar::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY,
60557731344,
DateTime::TimeZone::NEG_INFINITY,
60557760000,
28656,
0,
'LMT'
    ],
    [
60557731344,
60962774544,
60557760000,
60962803200,
28656,
0,
'MMT'
    ],
    [
60962774544,
61255411200,
60962803344,
61255440000,
28800,
0,
'CIT'
    ],
    [
61255411200,
61369628400,
61255443600,
61369660800,
32400,
0,
'JST'
    ],
    [
61369628400,
DateTime::TimeZone::INFINITY,
61369657200,
DateTime::TimeZone::INFINITY,
28800,
0,
'CIT'
    ],
];

sub olson_version { '2011i' }

sub has_dst_changes { 0 }

sub _max_year { 2021 }

sub _new_instance
{
    return shift->_init( @_, spans => $spans );
}



1;

