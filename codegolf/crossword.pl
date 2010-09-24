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
        my @strings = ('','','');
        for(@$_) {
            @strings = append_cell($_,@strings);
        }
        for(@strings) {
            $_.='#';
        }
        for(@strings) {
            print $_."\n";
        }
    }
}

sub append_cell {
    my ($symbol,@strings) = @_;
    my $flag;
    my @newstr;
    for(@strings) {
        if(!$flag) {
            push @newstr, $_.'###';
        }
        elsif($symbol =~ /X/) {
            push @newstr, $_.'###';
        }
        else {
            push @newstr, $_.'#  ';
        }
        $flag=1;
    }
    return @newstr;
}