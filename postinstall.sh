#!/bin/bash


yum -y install yum-plugin-fastestmirror
yum -y update

# rpmfusion
# Probar con los de postinstaller y sino con xenode
rpm -y --import http://sourceforge.net/projects/postinstaller/files/data/RPM-GPG-KEY-rpmfusion-free-fedora-18
rpm -y --import http://commondatastorage.googleapis.com/xenodecdn/RPM-GPG-KEY-rpmfusion-free-fedora-18
rpm -y --import http://sourceforge.net/projects/postinstaller/files/data/RPM-GPG-KEY-rpmfusion-nonfree-fedora-18 
rpm -y --import http://commondatastorage.googleapis.com/xenodecdn/RPM-GPG-KEY-rpmfusion-nonfree-fedora-18
#### sigue de lo anterior
yum localinstall --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-stable.noarch.rpm
#### LIVNA
rpm -ivhy http://rpm.livna.org/livna-release.rpm
yum -y update

# drivers video libre
yum -y install mesa-dri-drivers mesa-libGLU
yum -y install libtxc_dxtn --enablerepo=rpmfusion-free-updates-testing
yum -y update

# Pre carga de aplicaciones para acelerar el sistema
yum -y install preload

# Compresores y descompresores
yum -y install unrar arj p7zip p7zip-plugins lha sharutils unzoo unace bzip2 gzip tar unzip

# Una terminal como la gente
yum -y install zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s /bin/zsh

#desarrollo (falta todavia)
yum -y groupinstall "Development Tools"
yum -y groupinstall "Development Libraries"
##vim, plugins
yum -y install vim-common vim-enhanced vim-latex vim-latex-doc vim-X11 ctags ack
# Glade
yum -y install glade
##geany por las dudas
##pip, virtualenv, git
yum -y install git python-pip
python-pip install virtualenv pep8 pylint pyflakes flake8 rope ropemode

yum -y install highlight highlight-gui

# npm node.js para coffescript y coffelint de vim
yum -y install nodejs npm nodejs-mkdirp 
npm install -g inherits optimist coffee-script coffeelint meteorite less

#Codecs
yum -y install gstreamer*-libav gstreamer*-plugins-bad-free-extras gstreamer*-plugins-bad-freeworld gstreamer*-plugins-good-extras gstreamer*-plugins-ugly gstreamer-ffmpeg xine-lib-extras xine-lib-extras-freeworld k3b-extras-freeworld

# Leer dvd cifrados
yum -y install libdvdread libdvdnav libdvdcss

# Extensiones y tweak
yum -y install gnome-shell-extension-common gnome-tweak-tool dconf-editor

# Aplicaciones
yum -y install --skip-broken cheese gimp gimp-help-es gimp-resynthesizer sound-juicer vlc java-1.7.0-openjdk ntfs-3g easytag java-1.7.0-openjdk-devel openshot btrfs-progs wget axel icedtea-web alsa-plugins-pulseaudio zim shutter blender YafaRay-blender AcetoneISO2 audacity-freeworld mypaint mypaint-data pinta pdfmod klavaro posterazor scribus dvdisaster liveusb-creator youtube-dl pdfjam glabels planner pdfedit pdfshuffler pitivi soundconverter fritzing impressive testdisk duff

# mplayer
yum -y install mplayer mplayer-gui smplayer

# DIA
yum -y install dia dia-CMOS dia-Digital dia-electric2 dia-electronic dia-gnomeDIAicons dia-optics

# Audacious
yum -y install audacious audacious-libs audacious-plugins audacious-plugins-freeworld audacious-plugins-freeworld-aac audacious-plugins-freeworld-ffaudio audacious-plugins-freeworld-mp3

# Extensiones de Nautilus
# nautilus-extensions nautilus-image-converter nautilus-open-terminal nautilus-sendto nautilus-terminal nautilus-sound-converter

yum -y install openclipart

# LaTeX
yum -y install texlive-svg texlive-svg-inkscape-doc texlive-pdftex pstoedit pdf2svg texlive-pdftools texlive-inconsolata texlive-inconsolata-doc writer2latex texlive-tex-gyre* texlive-collection-fontsrecommended texlive-pst* texlive-collection-pstricks texlive-svgcolor texlive-spot texlive-biolinum* texlive-libertine* texlive-libgreek texlive-cantarell texlive-psnfss

# Inkscape
yum -y install inkscape inkscape-docs inkscape-sozi inkscape-view
cd /usr/share/inkscape/extensions/
wget http://pav.iki.fi/software/textext/textext-0.4.4.tar.gz
tar xzvf textext-0.4.4.tar.gz
rm textext-0.4.4.tar.gz
cd -

# LibreOffice (falta todavía)
yum -y groupinstall "Office/Productivity"
yum -y install libreoffice libreoffice-langpack-es libreoffice-nlpsolver libreoffice-ogltrans libreoffice-presentation-minimizer libreoffice-report-builder libreoffice-writer2latex libreoffice-writer2xhtml ooo2gd openoffice.org-diafilter openoffice.org-ooolatex unoconv
yum -y evince-djvu evince-dvi

# Fuentes del sistema
yum -y install levien-inconsolata-fonts aajohan-comfortaa-fonts linux-libertine*

# Navegadores
# Chromium =================> Deshabilitado porque crea conflicto con npm por el motor v8
#cd /etc/yum.repos.d/
#wget http://repos.fedorapeople.org/repos/spot/chromium-stable/fedora-chromium-stable.repo
#### Vuelve al directorio anterior
#cd -
## Google Chrome
touch /etc/yum.repos.d/google-chrome.repo
echo '[google-chrome]
name=google-chrome - x86_64
baseurl=http://dl.google.com/linux/chrome/rpm/stable/x86_64
enabled=1
gpgcheck=1
gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub' > /etc/yum.repos.d/google-chrome.repo
yum -y update
yum -y install chromium
yum -y install google-chrome-stable

# Impresoras HP
yum -y install hplip hplip-common libsane-hpaio

# Juegos
yum -y install gbrainy gltron warmux gnome-games*

# Gnome shell extensions
yum -y install  gnome-shell-extension-weather gnome-shell-extension-presentation-mode gnome-shell-extension-pomodoro
