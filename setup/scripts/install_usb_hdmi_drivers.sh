info "Installing DisplayLink USB HDMI drivers..."

git clone https://github.com/AdnanHodzic/displaylink-debian.git
cd displaylink-debian
sudo ./displaylink-debian.sh
rm -rf displaylink-debian

success "DisplayLink USB HDMI drivers installed!"
