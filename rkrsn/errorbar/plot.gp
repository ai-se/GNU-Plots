set terminal postscript eps enhanced color 15 "Helvetica"
set output "deltas.eps"
set title "Changes"
set xlabel "Features"
set ylabel "Magnitude of changes"
set xrange [0:21]
set xtics border in scale 1,0.5 nomirror rotate by -45 offset character 0, 0, 0     norangelimit
set size ratio 1
unset key
# set key left bottom Left title "Legend" box 3
# plot "delta" using 1:2:3 with errorbars
plot "delta.csv" using 2:3:4:5:xticlabels(1) with errorbars