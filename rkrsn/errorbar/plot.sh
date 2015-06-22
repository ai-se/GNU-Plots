#! /bin/bash
for f in *.csv 
  do 
    gnuplot -e "filename='${f%.*}'" plot.gp 
    convert -density 600 ${f%.*}.eps ${f%.*}.png
    rm ${f%.*}.eps
  done
