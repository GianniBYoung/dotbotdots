* chroot -> change root
  * in my own words: chroot creates a root directory at the current location. this directory has
    has no view of what is above it so for all intents it is the root to its children.
  * it is possible to have users of a group ssh into the 'jail' think csce server kind of
  * this is the basis for containerization

* Linux name spaces -> User IPC UTS Mount Network PID
  * these limit what you can see

* Cgroups ( control groups )
  * limit what you can access

* lxc is a middle ground between virtualization and chrooting
* lx(c)d is the daemon that lets us communicate with lxc containers.
