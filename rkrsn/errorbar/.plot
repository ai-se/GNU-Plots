set terminal postscript eps enhanced color 20 "Helvetica"
set output filename.".eps"
set title filename
set xlabel "Features"
set ylabel "Magnitude of changes"
set xrange [0:21]
set xtics border in scale 0,0 nomirror norotate  autojustify
set xtics  norangelimit
set yrange [-0.6:+0.6]
# set yrange [-0.6:+0.6]
set xtics border in scale 1,0.5 nomirror rotate by -45 offset character 0, 0, 0     norangelimit
set ytics border in scale 1,0.5 nomirror norotate  autojustify
set size ratio 0.66
unset key
# set key left bottom Left title "Legend" box 3
# plot "delta" using 1:2:3 with errorbars
plot filename.".csv" using 2:3:4:5:xticlabels(1) with errorbars
