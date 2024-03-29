# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.07) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from ../DateTime/data/Olson/2011i/asia.  Olson data version 2011i
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Asia::Dubai;
{
  $DateTime::TimeZone::Asia::Dubai::VERSION = '1.36';
}

use strict;

use Class::Singleton;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Asia::Dubai::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY,
60557746728,
DateTime::TimeZone::NEG_INFINITY,
60557760000,
13272,
0,
'LMT'
    ],
    [
60557746728,
DateTime::TimeZone::INFINITY,
60557761128,
DateTime::TimeZone::INFINITY,
14400,
0,
'GST'
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

