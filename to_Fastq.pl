#!/usr/bin/env perl
# ABSTRACT: Remove tags by content from ABI traces
# PODNAME: this
use 5.018;
use warnings;
use Data::Dumper;
use FASTX::Abi;
use Term::ANSIColor;
my ($file) = @ARGV;
die "Missing filename / File not found.\n" if (not defined $file or not -e $file);
my $trace = FASTX::Abi->new({ filename => $file });

say $trace->get_fastq();
