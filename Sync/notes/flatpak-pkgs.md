## Flatpaks
### GUI
com.brave.Browser
app.zen_browser.zen
io.gitlab.librewolf-community
io.github.flattool.Warehouse
com.github.tchx84.Flatseal

### Commands
flatpak remote-add --if-not-exists --subset=verified flathub-verified https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-delete flathub
flatpak install flathub-verified "package-name"

### Unused
it.mijorus.gearlever
com.boxy_svg.BoxySVG
