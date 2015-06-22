#! /bin/bash
for f in *.csv 
  do 
    gnuplot -e "filename='${f%.*}'" .plot 
    convert -density 600 -flatten ${f%.*}.eps ${f%.*}.png
    rm ${f%.*}.eps
  done
