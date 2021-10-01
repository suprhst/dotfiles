sudo modprobe -r ath10k_pci
sudo modprobe ath10k_pci
sudo systemctl restart systemd-networkd
sudo systemctl restart systemd-resolved
sudo systemctl restart iwd
