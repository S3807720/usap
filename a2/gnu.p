# set default settings – png and 700x700
set terminal pngcairo enhanced font "Arial,14" size 700,700
# temp
set title 'Temperatures of GPU and CPU While Compiling Kernel'
set xlabel 'Seconds'
set ylabel 'Temperatures'
set output 'gnu/temps.png'
plot 'gnu/cputemp' using 1:2 with line title "CPU", 'gnu/gputemp' using 1:2 with line title "GPU"

# cpu clock
set title 'CPU Clock Speed While Compiling Kernel'
set xlabel 'Seconds'
set ylabel 'Frequency in Gigahertz (GHz)'
set output 'gnu/clock.png'
plot 'gnu/cpuclock' using 1:2 with line title "CPU Clock Speed"

#cpu usage
set title 'CPU Usage While Compiling Kernel'
set xlabel 'Seconds'
set ylabel 'Usage %'
set output 'gnu/cusage.png'
plot 'gnu/cpuusage' using 1:2 with line title "USR", 'gnu/cpuusage' using 1:3 with line title "System", \
'gnu/cpuusage' using 1:4 with line title "IO Wait"

#cpu idle usage
set title 'CPU Idle Usage While Compiling Kernel'
set xlabel 'Seconds'
set ylabel 'Usage %'
set output 'gnu/idleusage.png'
plot 'gnu/cpuusage' using 1:5 with line title "Idle"

# mem
set title 'Memory usage while compiling Kernel'
set xlabel 'Seconds'
set ylabel 'Gigabytes (GBs)'
set output 'gnu/mem.png'
plot 'gnu/mem' using 1:2 with line title "Used", 'gnu/mem' using 1:3 with line title "Free", \
'gnu/mem' using 1:3 with line title "Cache", 'gnu/mem' using 1:4 with line title "Available"
