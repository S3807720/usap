# set default settings – png and 700x700
set terminal pngcairo enhanced font "Arial,14" size 700,700
# temp
set title 'Temperatures of GPU and CPU While Compiling Kernel'
set xlabel 'Seconds'
set ylabel 'Temperatures'
set output 'temps.png'
plot 'gnu/cputemp' using 1:2 with line title "CPU", 'gnu/gputemp' using 1:2 with line title "GPU"

set title 'CPU Clock Speed While Compiling Kernel'
set xlabel 'Seconds'
set ylabel 'Gigahertz (GHz)'
set output 'clock.png'
plot 'gnu/cpuclock' using 1:2 with line title "CPU Clock Speed"

set title 'CPU Usage While Compiling Kernel'
set xlabel 'Seconds'
set ylabel 'Gigahertz (GHz)'
set output 'cusage.png'
plot 'gnu/cpuusage' using 1:2 with line title "CPU Usage"

# mem
set title 'Memory usage while compiling Kernel'
set xlabel 'Seconds'
set ylabel 'Memory'
set output 'mem.png'
plot for [col=2:6] 'gnu/mem' using 1:col with lines title "Memory"
