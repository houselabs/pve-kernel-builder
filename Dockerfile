FROM debian:buster
RUN apt-get update &&\
    apt-get install -y curl git patch fakeroot build-essential devscripts libncurses5 libncurses5-dev libssl-dev bc flex bison libelf-dev libaudit-dev libgtk2.0-dev libperl-dev asciidoc xmlto gnupg gnupg2 rsync lintian debhelper libdw-dev libnuma-dev sphinx-common asciidoc-base automake cpio dh-python file gcc kmod libiberty-dev libtool perl-modules python-minimal sed tar zlib1g-dev lz4 libslang2-dev
RUN curl -fsSL http://download.proxmox.com/debian/proxmox-ve-release-6.x.gpg | apt-key add - &&\
    echo "deb http://download.proxmox.com/debian/pve buster pve-no-subscription" | tee /etc/apt/sources.list.d/pve-install-repo.list &&\
    apt-get update &&\
    apt-get install -y libpve-common-perl
CMD sh
