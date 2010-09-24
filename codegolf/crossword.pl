#!/usr/bin/perl

my $c = [];

while(<>) {
    @line = split //,$_;
    $l = [];
    for(@line) {
        push @$l, $_ if /X|_/;
    }
    push @$c, $l;
}

for(@$c) {
    for(@$_) {
        print $_.'!';
    }
    print "\n";
}