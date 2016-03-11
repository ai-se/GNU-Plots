set terminal postscript eps enhanced color 15 "Helvetica"
set output filename.".eps"
set title filename
set xlabel "Changes"
set ylabel "Feature"
set xrange [0:21]
# set yrange [-0.6:+0.6]
set xtics border in scale 1,0.5 nomirror rotate by -45 offset character 0, 0, 0     norangelimit
set size ratio 1
unset key
# set key left bottom Left title "Legend" box 3
# plot "delta" using 1:2:3 with errorbars
plot filename.".dat" using 2:3:4:5:xticlabels(1) with errorbars, 0 title ""
