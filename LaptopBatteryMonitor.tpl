# salvar como pdf
set terminal pdfcairo dashed

# salvar arquivo como "BatteryOutput.pdf"
set output "BatteryOutput.pdf"

# Título do gráfico 
set title "Descarga de bateria"

#set size 1,1

#set key right center

set key right

#set grid y

#set xtics font ", 18"
#set ytics font ", 17"

set xrange[0:255]

set xlabel "Tempo (seg * 30)" 

set ylabel "mAh"



plot "BatteryMonitor.txt" using 1:2 with lines lt 1 lw 4 linecolor rgb "gray" title "Full Capacity mAh", "BatteryMonitor.txt" using 1:3 with lines lt 2 lw 4 linecolor rgb "gray" title "Warning mAh", "BatteryMonitor.txt" using 1:4 with lines lt 3 lw 4 linecolor rgb "black" title "Remaining mAh" 

