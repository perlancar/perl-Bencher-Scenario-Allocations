package Bencher::Scenario::Allocations;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark allocations',

    descriptions => <<'_',

This scenario tries to give a picture on how long it takes to allocate arrays
and hashes of various size take.

_
    participants => [
        {name=>'1k-array0'  , summary => 'Allocating empty array 1000 times'      , code_template=>'my $val; for (1..1000) { $val = [] }'},
        {name=>'1k-hash0'   , summary => 'Allocating empty hash 1000 times'       , code_template=>'my $val; for (1..1000) { $val = {} }'},
        {name=>'1k-array1'  , summary => 'Allocating 1-element array 1000 times'  , code_template=>'my $val; for (1..1000) { $val = [1] }'},
        {name=>'1k-hash1'   , summary => 'Allocating 1-key hash 1000 times'       , code_template=>'my $val; for (1..1000) { $val = {a=>1} }'},
        {name=>'1k-array5'  , summary => 'Allocating 5-element array 1000 times'  , code_template=>'my $val; for (1..1000) { $val = [1..5] }'},
        {name=>'1k-hash5'   , summary => 'Allocating 5-key hash 1000 times'       , code_template=>'my $val; for (1..1000) { $val = {a=>1, b=>2, c=>3, d=>4, e=>5} }'},
        {name=>'1k-array10' , summary => 'Allocating 10-element array 1000 times' , code_template=>'my $val; for (1..1000) { $val = [1..10] }'},
        {name=>'1k-hash10'  , summary => 'Allocating 10-key hash 1000 times'      , code_template=>'my $val; for (1..1000) { $val = {1..20} }'},
        {name=>'1k-array100', summary => 'Allocating 100-element array 1000 times', code_template=>'my $val; for (1..1000) { $val = [1..100] }'},
        {name=>'1k-hash100' , summary => 'Allocating 100-key hash 1000 times'     , code_template=>'my $val; for (1..1000) { $val = {1..200} }'},
    ],
};

1;
# ABSTRACT:
