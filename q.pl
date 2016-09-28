
1)  #ls -l | perl -ne '@F = split(/\s+/,$_,9); print join(";",@F)' | tee w

2) #cat w | perl -e 'while (<>) {@F = split(/;/,$_,9); join(" ",@F); $count{$ARGV}++; if (@F[4]>1000000) {print @F[8];$c{$ARGV}++;foreach $. (%c) {print "$c{$.} "} }};foreach $. (%count) {print "$count{$.}\n"}'

3) #cat w| perl -e 'use Data::Dumper; while (<>) {@F = split(/;/,$_,9); join(" ",@F); my $ar=[@F]; print Dumper($ar);}'


   #cat w| perl -e 'use Data::Printer; while (<>) {@F = split(/;/,$_,9); join(" ",@F); my $ar=[@F]; p $ar'




