# This scrpt scans on a network (default wlan0) for devices using PING.
# pass the network interface name as argument or it picks the default.

default_interface="wlan0"
ip_floor=1
ip_ceiling=254

if [ $# -eq 0 ]; then
  echo "[You can input network interface as argument. default is wlan0]"
  interface=$default_interface
else
  interface=$1
fi
echo "Selected interface: $interface"
found=$(ifconfig | grep $interface)
if [ -z "$found" ]; then
  echo "$interface not found in ifconfig"
  exit
fi
range=$(ifconfig $interface | grep "inet addr" | cut -d':' -f2 | cut -d' ' -f1 | cut -d'.' -f1-3)
echo "Scanning in range $range over IPs from $ip_floor to $ip_ceiling ..."
for i in $(seq $ip_floor $ip_ceiling); do
  ip=$range.$i
  ping -c 1 -W 2 $ip | grep "from" |  cut -d':' -f1 &
done
sleep 2

