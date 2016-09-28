#use DDP
use Data::Dumper;

my $ar;
while (<>)
    {
        chomp;
        my @F = split(/;/);
        
        for (my $q=0; $q<9; $q++)
        {
          push @{${$ar}[$q]}, $F[$q];
        }
    }
        print Dumper($ar);
        # p ($ar);

        
        
# 1) chomp удаляет \n
# 2) push @{} массив (маленький)
#     ${$ar}[$q] - элемент массива (элемент большого массива, ссылка на маленькие массивчики)
