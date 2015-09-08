set terminal postscript eps enhanced color 15 "Helvetica"
set output "file.eps"
set title "Accuracy"
set xlabel "Train:Test Ratio"
set ylabel "%Acc"
set xrange [0:5]
set yrange [90:100]
set xtics border in scale 1,0.5 nomirror rotate by -45 offset character 0, 0, 0     norangelimit
set size ratio 1
unset key
# set key left bottom Left title "Legend" box 3
# plot "delta" using 1:2:3 with errorbars
plot "data.csv"  using 2:3:4:5:xticlabels(1) with errorbars, "" u  2:3 smooth linear t "Acc"
