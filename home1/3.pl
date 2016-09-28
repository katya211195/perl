#use DDP
use Data::Dumper;
while (<>)
    {@F = split(/;/,$_,9);
        join(" ",@F);
        my $ar=[@F];
        print Dumper($ar);
        # p ($ar);}

