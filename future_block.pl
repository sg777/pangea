#!/usr/bin/perl
use warnings;
use strict;
my $chips       = "chips-cli";
my $blockcount = qx{$chips getblockcount};
my $now     = time;
my $future_time = 1623682800;
my $diff_time = $future_time - $now;
my $future_block = $diff_time /10 ;
$future_block = $future_block + $blockcount;
print "future block: $future_block";
