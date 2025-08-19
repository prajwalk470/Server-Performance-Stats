echo "=====Cpu usage====="
top -bn1 | grep "Cpu(s)"

echo "=====memory usage====="
free -m

echo "=====disk space====="
df -h

echo "=====top 5 cpu process====="
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6

echo "=====top 5 memory process====="
ps -eo pid,comm,%cpu,%mem --sort=-%mem | head -n 6
