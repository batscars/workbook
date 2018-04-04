##### /etc/apt/mirror.list
[https://raymii.org/s/tutorials/Set_up_a_local_Ubuntu_debian_apt_mirror.html](https://raymii.org/s/tutorials/Set_up_a_local_Ubuntu_debian_apt_mirror.html)
```
# apt-mirror configuration file
##
## The default configuration options (uncomment and change to override)
##
#

set base_path /media/STORAGE/
# set mirror_path $base_path/mirror
# set skel_path $base_path/skel
# set var_path $base_path/var
#
# set defaultarch <running host architecture>
set nthreads 20
# copy below this line

# 16.04 mirroring
deb-amd64 http://archive.ubuntu.com/ubuntu xenial main main/debian-installer restricted restricted/debian-installer universe multiverse
deb-amd64 http://archive.ubuntu.com/ubuntu xenial-security main restricted universe multiverse
deb-amd64 http://archive.ubuntu.com/ubuntu xenial-updates main restricted universe multiverse
deb-amd64 http://archive.ubuntu.com/ubuntu xenial-proposed main restricted universe multiverse
deb-amd64 http://archive.ubuntu.com/ubuntu xenial-backports main restricted universe multiverse

deb-i386 http://archive.ubuntu.com/ubuntu xenial main main/debian-installer restricted restricted/debian-installer universe multiverse
deb-i386 http://archive.ubuntu.com/ubuntu xenial-security main restricted universe multiverse
deb-i386 http://archive.ubuntu.com/ubuntu xenial-updates main restricted universe multiverse
deb-i386 http://archive.ubuntu.com/ubuntu xenial-proposed main restricted universe multiverse
deb-i386 http://archive.ubuntu.com/ubuntu xenial-backports main restricted universe multiverse

deb-src http://archive.ubuntu.com/ubuntu xenial-security main restricted universe multiverse
deb-src http://archive.ubuntu.com/ubuntu xenial-updates main restricted universe multiverse
deb-src http://archive.ubuntu.com/ubuntu xenial-proposed main restricted universe multiverse
deb-src http://archive.ubuntu.com/ubuntu xenial-backports main restricted universe multiverse

# 14.04 mirroring
deb-amd64 http://archive.ubuntu.com/ubuntu trusty main main/debian-installer restricted restricted/debian-installer universe multiverse
deb-amd64 http://archive.ubuntu.com/ubuntu trusty-security main restricted universe multiverse
deb-amd64 http://archive.ubuntu.com/ubuntu trusty-updates main restricted universe multiverse
deb-amd64 http://archive.ubuntu.com/ubuntu trusty-proposed main restricted universe multiverse
deb-amd64 http://archive.ubuntu.com/ubuntu trusty-backports main restricted universe multiverse

deb-i386 http://archive.ubuntu.com/ubuntu trusty main main/debian-installer restricted restricted/debian-installer universe multiverse
deb-i386 http://archive.ubuntu.com/ubuntu trusty-security main restricted universe multiverse
deb-i386 http://archive.ubuntu.com/ubuntu trusty-updates main restricted universe multiverse
deb-i386 http://archive.ubuntu.com/ubuntu trusty-proposed main restricted universe multiverse
deb-i386 http://archive.ubuntu.com/ubuntu trusty-backports main restricted universe multiverse

deb-src http://archive.ubuntu.com/ubuntu trusty-security main restricted universe multiverse
deb-src http://archive.ubuntu.com/ubuntu trusty-updates main restricted universe multiverse
deb-src http://archive.ubuntu.com/ubuntu trusty-proposed main restricted universe multiverse
deb-src http://archive.ubuntu.com/ubuntu trusty-backports main restricted universe multiverse


# 12.04 mirroring
deb-amd64 http://archive.ubuntu.com/ubuntu precise main main/debian-installer restricted restricted/debian-installer universe multiverse
deb-amd64 http://archive.ubuntu.com/ubuntu precise-security main restricted universe multiverse
deb-amd64 http://archive.ubuntu.com/ubuntu precise-updates main restricted universe multiverse
deb-amd64 http://archive.ubuntu.com/ubuntu precise-proposed main restricted universe multiverse
deb-amd64 http://archive.ubuntu.com/ubuntu precise-backports main restricted universe multiverse

deb-i386 http://archive.ubuntu.com/ubuntu precise main main/debian-installer restricted restricted/debian-installer universe multiverse
deb-i386 http://archive.ubuntu.com/ubuntu precise-security main restricted universe multiverse
deb-i386 http://archive.ubuntu.com/ubuntu precise-updates main restricted universe multiverse
deb-i386 http://archive.ubuntu.com/ubuntu precise-proposed main restricted universe multiverse
deb-i386 http://archive.ubuntu.com/ubuntu precise-backports main restricted universe multiverse

deb-src http://archive.ubuntu.com/ubuntu precise-security main restricted universe multiverse
deb-src http://archive.ubuntu.com/ubuntu precise-updates main restricted universe multiverse
deb-src http://archive.ubuntu.com/ubuntu precise-proposed main restricted universe multiverse
deb-src http://archive.ubuntu.com/ubuntu precise-backports main restricted universe multiverse

clean http://archive.ubuntu.com/ubuntu
```
