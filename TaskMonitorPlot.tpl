# salvar como pdf
set terminal pdfcairo dashed

# salvar arquivo como "ChromeOutput.pdf"
set output "ChromeOutput.pdf"

# Título do gráfico 
set title "Monitoramento do Google Chrome Web Browser"

#set size 1,1

#set key right center

set key right

#set grid y

#set xtics font ", 18"
#set ytics font ", 17"

set xrange[0:255]

#set xlabel "Time (sec * 30)" font " ,18"
#set ylabel "% Usage" font " , 18"

set xlabel "Tempo (seg * 30)" 
set ylabel "% Utilização"

plot "ChromeMonitor.txt" using 1:2 with lines lt 1 lw 4 linecolor rgb "black" title "CPU", "ChromeMonitor.txt" using 1:3 with lines lt 2 lw 4 linecolor rgb "black" title "RAM"

