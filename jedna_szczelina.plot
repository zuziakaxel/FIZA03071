
reset

# epslatex

set terminal epslatex size 20cm,8cm color colortext
set output 'jedna_szczelina.tex'

# Line styles
set grid
set border linewidth 2
set style line 1 linecolor rgb '#dd181f' linetype 1 linewidth 5 pt 1  # red
set style line 2 linecolor rgb '#7BE015' linetype 1 linewidth 5 pt 1 # green
# Axes label
set yrange [0:40]
set xlabel 'Odległość $x$ [mm]'
set ylabel 'Natężenie Światła $I$'

#set key box opaque
# Axis ranges
# Tics in LaTeX format
set format '$%g$'
#autojustify
set style data linespoints
#arrows
set arrow from 0,0 to 0,40 nohead


plot "jedna_szczelina.dat" u 1:2 w linespoints ls 2 notitle

