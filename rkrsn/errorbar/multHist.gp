set terminal postscript eps enhanced color 20 "Helvetica"
set output "ivy-hist.eps"
set boxwidth 0.9 absolute
set style fill solid 1.00 border lt 0
set key inside right top vertical Right noreverse noenhanced autotitle nobox
set title "Ivy" 
set style histogram clustered gap 1 title textcolor lt -1
set datafile missing '-'
set style data histograms
set xlabel "Features"
set xtics border in scale 0,0 nomirror rotate by -45  autojustify
set xtics  norangelimit
set xtics   ()
set ylabel "% Changes"
set yrange [0:110] noreverse nowriteback
x = 0.0
i = 22
## Last datafile plotted: "ivy.csv"
plot 'ivy.csv' using 4:xtic(1) ti col, '' u 5 ti col, '' u 6 ti col
#, '' u 3 ti col, '' u 2 ti col  