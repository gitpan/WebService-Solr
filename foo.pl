#!perl

# Exercises GitHub issue 22 https://github.com/bricas/webservice-solr/issues/22

use warnings;
use strict;

use lib 'lib';

use Carp::Always;
use WebService::Solr::Query;

my $q = WebService::Solr::Query->new( { '*' => \'* AND -classifications:(4 OR 5)' } );

my $str1 = $q->stringify;
print "Result #1: $str1\n";
