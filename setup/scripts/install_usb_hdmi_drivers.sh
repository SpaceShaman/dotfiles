info "Installing DisplayLink USB HDMI drivers..."

# Download the Ubuntu APT package provided by Synaptics.com, the official 
# makers of DisplayLink
wget https://www.synaptics.com/sites/default/files/Ubuntu/pool/stable/main/all/synaptics-repository-keyring.deb
# Install the DisplayLink APT package keyring
sudo apt install -y ./synaptics-repository-keyring.deb
sudo apt update -y
# Install the DisplayLink driver provided by Synaptics.com, the official source
sudo apt install -y displaylink-driver
rm ./synaptics-repository-keyring.deb

success "DisplayLink USB HDMI drivers installed!"
