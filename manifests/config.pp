class setmtu::config {
  case $::osfamily {
    'RedHat': {
      augeas {'save higher MTU':
        context => '/files/etc/sysconfig/network-scripts/ifcfg-eth0',
        changes => "set MTU ${mtu}",
      }
    }
    default: {
      fail("This class is not supported / tested on ${::operatingsystem}")
    }
  }
}


