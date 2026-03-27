set -e

plymouth-set-default-theme bazzite -R
chmod +x /usr/bin/clean-system
chmod +x /usr/lib/systemd/system/battery-limit.service
systemctl enable battery-limit.service
