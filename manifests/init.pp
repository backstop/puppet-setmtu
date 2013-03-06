#TODO:  Class was only affecting xen0, vmware and physical.
#TODO:  This should support Ubuntu type machines.
#TODO:  Make this work on any interface that's up.

class setmtu ($mtu = 1500) {
  include setmtu::config, setmtu::ifconfig
}

