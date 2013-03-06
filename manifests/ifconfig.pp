class setmtu::ifconfig {
  case $::osfamily {
    'RedHat': {
      exec {'change current MTU':
        path    => '/sbin',
        command => "/sbin/ifconfig eth0 mtu ${mtu}",
        require => Class['setmtu::config'],
        unless  => "/sbin/ifconfig eth0 | /bin/grep -i 'mtu:${mtu}' &> /dev/null",
      }
    }
    default: {
      fail("This class is not supported / tested on ${::operatingsystem}")
    }
  }
}
