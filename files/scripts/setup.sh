#!/usr/bin/env bash
set -e

chmod +x /usr/bin/clean-system
ln -s /usr/lib/systemd/system/battery-limit.service \
      /etc/systemd/system/multi-user.target.wants/battery-limit.service
