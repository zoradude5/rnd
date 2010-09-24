#!/usr/bin/perl

my $c = [];

readx($c);
printx($c);

sub readx {    
    while(<>) {
        @line = split //,$_;
        my $l = [];
        for(@line) {
            push @$l, $_ if /X|_/;
        }
        push @{$_[0]}, $l;
    }
}

sub printx {
    for(@{$_[0]}) {
        for(@$_) {
            print $_.'!';
        }
        print "\n";
    }
}