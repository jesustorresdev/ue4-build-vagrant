# ue4-build-vagrant

Vagrantfile to build Unreal Engine 4 in a Vagrant virtual machine.

## About Vagrant

Vagrant is a tool to create and configure reproducible and portable development
environments using virtual machines. These are specified through Vagrantfiles,
in a similar manner as ```make``` uses Makefiles.

## Requirements

Mainly, you need Vagrant and some additional plugins:

 * Virtualbox (our Vagrantfile has only been tested with this VM provider)
 * Vagrant >= 1.8.2

## Build a virtual machine

To create the Vagrant virtual machine, just run:

    $ vagrant up

from the directory of this repository, where is the Vagrantfile.

If the previous command is successful, remember you can manage the new virtual
machine using the following Vagrant commands:

 * `vagrant halt`, to stop the virtual machine.
 * `vagrant destroy`, to remove the virtual machine.
 * `vagrant ssh`, to enter the virtual machine.

## Software provisioned

The created virtual machines must be provisioned with all the software that we
need. For that we use [build-ue4.sh](build-ue4.sh) Bash script. It will install
ll dependencies and start the build process as is described by
[Unreal Engine 4 documentation](https://wiki.unrealengine.com/Building_On_Linux).

# Copyright and license

Copyright (c) 2016, Jesús Torres &lt;<jmtorres@ull.es>&gt;. This work is
licensed under a [Creative Commons Public Domain Dedication 1.0 License](https://creativecommons.org/publicdomain/zero/1.0/).
