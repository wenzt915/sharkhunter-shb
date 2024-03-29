# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.07) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from ../DateTime/data/Olson/2011i/northamerica.  Olson data version 2011i
#
# Do not edit this file directly.
#
package DateTime::TimeZone::America::Montserrat;
{
  $DateTime::TimeZone::America::Montserrat::VERSION = '1.36';
}

use strict;

use Class::Singleton;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::America::Montserrat::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY,
60289416592,
DateTime::TimeZone::NEG_INFINITY,
60289401660,
-14932,
0,
'LMT'
    ],
    [
60289416592,
DateTime::TimeZone::INFINITY,
60289402192,
DateTime::TimeZone::INFINITY,
-14400,
0,
'AST'
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

