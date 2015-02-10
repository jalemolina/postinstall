#!/bin/bash


yum -y install yum-plugin-fastestmirror
yum -y update

# rpmfusion
# Probar con los de postinstaller y sino con xenode
rpm --import http://sourceforge.net/projects/postinstaller/files/data/RPM-GPG-KEY-rpmfusion-free-fedora-20
rpm --import http://commondatastorage.googleapis.com/xenodecdn/RPM-GPG-KEY-rpmfusion-free-fedora-20
rpm --import http://sourceforge.net/projects/postinstaller/files/data/RPM-GPG-KEY-rpmfusion-nonfree-fedora-20 
rpm --import http://commondatastorage.googleapis.com/xenodecdn/RPM-GPG-KEY-rpmfusion-nonfree-fedora-20
#### sigue de lo anterior
yum localinstall --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-stable.noarch.rpm
#### LIVNA
rpm -ivhu http://rpm.livna.org/livna-release.rpm
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
python-pip install --upgrade virtualenv pep8 pylint pyflakes flake8 rope ropemode

yum -y install highlight highlight-gui

# npm node.js para coffescript y coffelint de vim
yum -y install nodejs npm nodejs-mkdirp 
npm install -g inherits optimist coffee-script coffeelint meteorite less

#Codecs
yum -y install gstreamer*-libav gstreamer*-plugins-bad-free-extras gstreamer*-plugins-bad-freeworld gstreamer*-plugins-good-extras gstreamer*-plugins-ugly gstreamer-ffmpeg xine-lib-extras xine-lib-extras-freeworld k3b-extras-freeworld libaacs libbluray libbluray-bdj

# Leer dvd cifrados
yum -y install libdvdread libdvdnav libdvdcss

# Extensiones y tweak
yum -y install gnome-shell-extension-common gnome-tweak-tool dconf-editor

# Aplicaciones
yum -y install --skip-broken cheese gimp gimp-help-es gimp-resynthesizer sound-juicer vlc java-1.7.0-openjdk ntfs-3g easytag java-1.7.0-openjdk-devel openshot btrfs-progs wget axel icedtea-web alsa-plugins-pulseaudio Zim shutter blender YafaRay-blender AcetoneISO2 audacity-freeworld mypaint mypaint-data pinta pdfmod klavaro posterazor scribus dvdisaster liveusb-creator youtube-dl pdfjam glabels planner pdfedit pdfshuffler pitivi soundconverter fritzing impressive testdisk duff htop

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
yum -y install texlive-svg texlive-svg-inkscape-doc texlive-pdftex pstoedit pdf2svg texlive-pdftools texlive-inconsolata texlive-inconsolata-doc writer2latex texlive-tex-gyre texlive-tex-gyre-doc texlive-tex-gyre-math texlive-tex-gyre-math-doc texlive-collection-fontsrecommended texlive-pst* texlive-collection-pstricks texlive-svgcolor texlive-spot texlive-libertine texlive-libertine-doc texlive-libgreek texlive-cantarell texlive-psnfss texlive-babel texlive-babel-spanish texlive-hyphen-spanish

yum -y install texlive-pst-2dplot texlive-pst-2dplot-doc texlive-pst-3d texlive-pst-3d-doc texlive-pst-3dplot texlive-pst-3dplot-doc texlive-pst-abspos texlive-pst-abspos-doc texlive-pst-am texlive-pst-am-doc texlive-pst-asr texlive-pst-asr-doc texlive-pst-bar texlive-pst-bar-doc texlive-pst-barcode texlive-pst-barcode-doc texlive-pst-bezier texlive-pst-bezier-doc texlive-pst-blur texlive-pst-blur-doc texlive-pst-bspline texlive-pst-bspline-doc texlive-pst-calendar texlive-pst-calendar-doc texlive-pst-circ texlive-pst-circ-doc texlive-pst-coil texlive-pst-coil-doc texlive-pst-cox texlive-pst-cox-doc texlive-pst-dbicons texlive-pst-dbicons-doc texlive-pst-diffraction texlive-pst-diffraction-doc texlive-pst-electricfield texlive-pst-electricfield-doc texlive-pst-eps texlive-pst-eps-doc texlive-pst-eucl texlive-pst-eucl-doc texlive-pst-eucl-translation-bg-doc texlive-pst-exa texlive-pst-exa-doc texlive-pst-fill texlive-pst-fill-doc texlive-pst-fit texlive-pst-fit-doc texlive-pst-fr3d texlive-pst-fr3d-doc texlive-pst-fractal texlive-pst-fractal-doc texlive-pst-fun texlive-pst-fun-doc texlive-pst-func texlive-pst-func-doc texlive-pst-gantt texlive-pst-gantt-doc texlive-pst-geo texlive-pst-geo-doc texlive-pst-ghsb texlive-pst-ghsb-doc texlive-pst-gr3d texlive-pst-gr3d-doc texlive-pst-grad texlive-pst-grad-doc texlive-pst-graphicx texlive-pst-graphicx-doc texlive-pst-infixplot texlive-pst-infixplot-doc texlive-pst-jtree texlive-pst-jtree-doc texlive-pst-knot texlive-pst-knot-doc texlive-pst-labo texlive-pst-labo-doc texlive-pst-layout texlive-pst-layout-doc texlive-pst-lens texlive-pst-lens-doc texlive-pst-light3d texlive-pst-light3d-doc texlive-pst-magneticfield texlive-pst-magneticfield-doc texlive-pst-math texlive-pst-math-doc texlive-pst-mirror texlive-pst-mirror-doc texlive-pst-node texlive-pst-node-doc texlive-pst-ob3d texlive-pst-ob3d-doc texlive-pst-ode texlive-pst-ode-doc texlive-pst-optexp texlive-pst-optexp-doc texlive-pst-optic texlive-pst-optic-doc texlive-pst-osci texlive-pst-osci-doc texlive-pst-pad texlive-pst-pad-doc texlive-pst-pdf texlive-pst-pdf-bin texlive-pst-pdf-doc texlive-pst-pdgr texlive-pst-pdgr-doc texlive-pst-platon texlive-pst-platon-doc texlive-pst-plot texlive-pst-plot-doc texlive-pst-poly texlive-pst-poly-doc texlive-pst-pulley texlive-pst-pulley-doc texlive-pst-qtree texlive-pst-qtree-doc texlive-pst-rubans texlive-pst-rubans-doc texlive-pst-sigsys texlive-pst-sigsys-doc texlive-pst-slpe texlive-pst-slpe-doc texlive-pst-solarsystem texlive-pst-solarsystem-doc texlive-pst-solides3d texlive-pst-solides3d-doc texlive-pst-soroban texlive-pst-soroban-doc texlive-pst-spectra texlive-pst-spectra-doc texlive-pst-stru texlive-pst-stru-doc texlive-pst-support-doc texlive-pst-text texlive-pst-text-doc texlive-pst-thick texlive-pst-thick-doc texlive-pst-tools texlive-pst-tools-doc texlive-pst-tree texlive-pst-tree-doc texlive-pst-tvz texlive-pst-tvz-doc texlive-pst-uml texlive-pst-uml-doc texlive-pst-vectorian texlive-pst-vectorian-doc texlive-pst-vowel texlive-pst-vowel-doc texlive-pst-vue3d texlive-pst-vue3d-doc texlive-pst2pdf texlive-pst2pdf-bin texlive-pst2pdf-doc texlive-pstool texlive-pstool-doc texlive-pstools texlive-pstools-bin texlive-pstricks texlive-pstricks-add texlive-pstricks-add-doc texlive-pstricks-doc texlive-pstricks-examples-doc texlive-pstricks-examples-en-doc texlive-pstricks_calcnotes-doc 


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

# Fuentes del sistema y emojis
yum -y install levien-inconsolata-fonts aajohan-comfortaa-fonts linux-libertine-fonts linux-libertine-fonts-common linux-libertine-biolinum-fonts gdouros-symbola-fonts

# Navegadores
# Chromium =================> Deshabilitado porque crea conflicto con npm por el motor v8
#cd /etc/yum.repos.d/
#wget http://repos.fedorapeople.org/repos/spot/chromium-stable/fedora-chromium-stable.repo
#### Vuelve al directorio anterior
#cd -
## Google Chrome
touch /etc/yum.repos.d/google-chrome.repo
echo '[google-chrome]
name=google-chrome - \$basearch
baseurl=http://dl.google.com/linux/chrome/rpm/stable/\$basearch
enabled=1
gpgcheck=1
gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub' > /etc/yum.repos.d/google-chrome.repo

# MongoDB
touch /etc/yum.repos.d/mongodb.repo
echo '[mongodb]
name=MongoDB Repository
baseurl=http://downloads-distro.mongodb.org/repo/redhat/os/\$basearch/
gpgcheck=0
enabled=1' > /etc/yum.repos.d/mongodb.repo
yum -y install mongodb-org
# systemctl start mongod 
# chkconfig mongod on
# systemctl status mongod 


yum -y update
# No se instala chromium por conflictos del paquete V8 con nodejs
#yum -y install chromium
yum -y install google-chrome-stable

# Impresoras HP
yum -y install hplip hplip-common libsane-hpaio

# Juegos
yum -y install gbrainy gltron warmux gnome-games*

# Gnome shell extensions
yum -y install  gnome-shell-extension-weather gnome-shell-extension-pomodoro

# Terminal desplegable
yum -y install glib gtk vala vte vte3 vte-devel vte3-devel
git clone https://github.com/linvinus/AltYo AltYo
cd AltYo
make
make install
