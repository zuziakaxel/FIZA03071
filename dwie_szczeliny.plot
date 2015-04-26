
reset

# epslatex

set terminal epslatex size 20cm,8cm color colortext
set output 'dwie_szczeliny.tex'

# Line styles
set grid
set border linewidth 2
set style line 1 linecolor rgb '#1B63A6' linetype 1 linewidth 5 pt 1  # blue
set style line 2 linecolor rgb '#7BE015' linetype 1 linewidth 5 pt 2 # green
# Axes label
set xlabel 'Odległość $x$ [mm]'
set ylabel 'Natężenie Światła $I$'

#set key box opaque
# Axis ranges
# Tics in LaTeX format
set format '$%g$'
#autojustify
set style data linespoints
#arrows
set arrow from 1434 to 1434,-50 nohead
set label "m = 1" at 1.3-0.35,12.50 + 2.5


plot "dwie_szczeliny.dat" u 1:2 w linespoints ls 1 notitle, "jedna_szczelina.dat" u 1:2 w lines ls 2 notitle

