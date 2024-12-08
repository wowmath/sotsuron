#!/usr/bin/

for f in *.dat; do
gnuplot << EOF

set terminal pdf
set output "${f%.*}.pdf"
set xtics 0, 1, 16
set ytics 0, 1, 10
set xlabel "a1[ µm]" # x軸のキャプション
set ylabel "b1[ µm]" # y軸のキャプション
set xrange [0:16]
set yrange [0:10]

# linecolor の変更
set style line 1 lc rgb "blue"
set style line 2 lc rgb "goldenrod"
set style line 3 lc rgb "dark-spring-green"
set style line 4 lc rgb "purple"
set style line 5 lc rgb "steelblue"
set style increment user

# 必要に応じて書式設定を変える
plot "$f"
exit
EOF
done