#!/bin/sh

echo "#!/bin/sh -e" > /etc/rc.local
echo "# rc.local\n" >> /etc/rc.local
echo "sudo ifdown wlan0" >> /etc/rc.local
echo "sudo ifup eth0\n" >> /etc/rc.local
echo "python3 /home/pi/seamonsters_git/CompetitionBot2017/grip/pi_script.py &" >> /etc/rc.local
echo "python3 /home/pi/seamonsters_git/CompetitionBot2017/grip/plain_camera.py &" >> /etc/rc.local
echo "exit 0" >> /etc/rc.local
