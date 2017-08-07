#!/bin/bash

sudo cp agregace /etc/network/if-up.d/init-agregace
sudo chmod 755 /etc/network/if-up.d/init-agregace
sudo chown root:root /etc/network/if-up.d/init-agregace
sudo shutdown -r now
