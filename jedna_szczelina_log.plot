
reset

# epslatex

set terminal epslatex size 20cm,8cm color colortext
set output 'jedna_szczelina_log.tex'

# Line styles
set grid
set border linewidth 2
set style line 1 linecolor rgb '#1B63A6' linetype 1 linewidth 5 pt 1  # blue
set style line 2 linecolor rgb '#7BE015' linetype 1 linewidth 5 pt 2 # green
# Axes label
set logscale y
set xlabel 'Odległość $x$ [mm]'
set ylabel 'Natężenie Światła $I$'

#set key box opaque
# Axis ranges
# Tics in LaTeX format
set format '$%g$'
#autojustify
set style data linespoints
#arrows



plot "jedna_szczelina.dat" u 1:2 w linespoints ls 1 notitle

