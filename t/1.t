#!/usr/bin/perl
use Test::More tests => 4;

BEGIN { use_ok( "Finance::QIF" ) }

my $foo = new Finance::QIF
    ( type => "Bank");
isa_ok($foo, "Finance::QIF");

is($foo->as_qif, "!Type:Bank\n", "Empty QIFs have correct type");
is("".$foo, "!Type:Bank\n", "Overloading works");
