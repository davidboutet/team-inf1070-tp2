set terminal png size 600,600
set output filename
set title title tc "red"
set size square 1.0,1.0
set boxwidth 0.5
set yrange [0:]

set style fill solid
set key outside top autotitle columnhead
plot '<cat' using 1:xtic(2) with boxes lc "blue"
