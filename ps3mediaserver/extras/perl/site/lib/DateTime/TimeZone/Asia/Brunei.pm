# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.07) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from ../DateTime/data/Olson/2011i/asia.  Olson data version 2011i
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Asia::Brunei;
{
  $DateTime::TimeZone::Asia::Brunei::VERSION = '1.36';
}

use strict;

use Class::Singleton;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Asia::Brunei::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY,
60752218820,
DateTime::TimeZone::NEG_INFINITY,
60752246400,
27580,
0,
'LMT'
    ],
    [
60752218820,
60968046600,
60752245820,
60968073600,
27000,
0,
'BNT'
    ],
    [
60968046600,
DateTime::TimeZone::INFINITY,
60968075400,
DateTime::TimeZone::INFINITY,
28800,
0,
'BNT'
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

