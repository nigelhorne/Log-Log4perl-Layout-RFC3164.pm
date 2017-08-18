#!perl -wT

use strict;
use warnings;
use Test::Most;

unless($ENV{RELEASE_TESTING}) {
	plan(skip_all => "Author tests not required for installation");
}

eval 'use warnings::unused -global';
if($@ || ($warnings::unused::VERSION < 0.04)) {
	plan(skip_all => 'warnings::unused >= 0.04 needed for testing');
} else {
	use_ok('Log::Log4perl::Layout::Syslog');
	new_ok('Log::Log4perl::Layout::Syslog');
	plan tests => 2;
}
