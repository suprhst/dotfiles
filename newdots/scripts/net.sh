modprobe -r ath10k_pci
modprobe ath10k_pci
rc-config restart iwd
rc-config restart dhcpcd
