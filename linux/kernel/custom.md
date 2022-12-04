``` bash
wget https://www.kernel.org/pub/linux/kernel/v6.x/linux-6.0.11.tar.xz
tar xvf linux-6.0.11.tar.xz
cd linux-6.0.11
```

``` bash
sudo apt-get install build-essential libncurses5-dev fakeroot
```

``` bash
make -j4
```

``` bash
sudo make modules_install
sudo make install
```

``` bash
sudo update-grub
```

``` bash
sudo reboot
```