package Bencher::Scenario::ComparisonOps;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark allocations',

    participants => [
        {name=>'1k-array0'  , code_template=>'my $val; for (1..1000) { $val = [] }'},
        {name=>'1k-hash0'   , code_template=>'my $val; for (1..1000) { $val = {} }'},
        {name=>'1k-array1'  , code_template=>'my $val; for (1..1000) { $val = [1] }'},
        {name=>'1k-hash1'   , code_template=>'my $val; for (1..1000) { $val = {a=>1} }'},
        {name=>'1k-array5'  , code_template=>'my $val; for (1..1000) { $val = [1..5] }'},
        {name=>'1k-hash5'   , code_template=>'my $val; for (1..1000) { $val = {a=>1, b=>2, c=>3, d=>4, e=>5} }'},
        {name=>'1k-array10' , code_template=>'my $val; for (1..1000) { $val = [1..10] }'},
        {name=>'1k-hash10'  , code_template=>'my $val; for (1..1000) { $val = {1..20} }'},
        {name=>'1k-array100', code_template=>'my $val; for (1..1000) { $val = [1..100] }'},
        {name=>'1k-hash100' , code_template=>'my $val; for (1..1000) { $val = {1..200} }'},
    ],
};

1;
# ABSTRACT:

=head1 SYNOPSIS
