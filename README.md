Puppet Reboot Module Lab
============================
  
## Prerequisites

 * [Vagrant 1.2.7](http://downloads.vagrantup.com/tags/v1.2.7) - I'm pretty sure you'll need the latest version (we tried 1.2.2 and it didn't work)
 * [VirtualBox 4.2.16](https://www.virtualbox.org/wiki/Downloads) or VMWare Fusion 5
    * If you want to use VMWare Fusion you will also need the vagrant-vmware-fusion plugin for vagrant (which is not free). You also want the latest version (at least 0.8.5). If you already have this installed, you can upgrade simply by calling `vagrant plugin install vagrant-vmware-fusion`.
 * Vagrant-Windows 1.2.0 - it has not yet been released, but you can download a prebuilt gem here: [vagrant-windows-1.2.0.gem](http://tinyurl.com/winvagrantgem)
 * At least 20GB free on the host box.
 * **NOTE:** If you file any issues on this repository, please note that I'll ask if you what you have installed and what versions. If it doesn't match the above, I will close your issue until you can reproduce it with the above installed.

## Setup

 1. Install/upgrade Vagrant to 1.2.7.
 1. Install/upgrade VirtualBox/VMWare to versions listed above.
 1. Install/upgrade required plugins for vagrant (if using VMWare you will need the non-free vagrant-vmware-fusion or equivalent).
 1. Install/upgrade vagrant-windows vagrant plugin. Open terminal/command line, head to the directory where the plugin is `vagrant plugin install vagrant-windows-1.2.0.gem`
 1. Take a look at this gist that might be helpful in determining commands to call for setup: [Install Vagrant Windows Environment](https://gist.github.com/ferventcoder/6251225)