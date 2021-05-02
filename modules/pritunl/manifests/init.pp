# A class to install and manage a Pritunl VPN server
class pritunl {
  include pritunl::install
}

class pritunl::install {
  case $::facts['os']['name'] {
    'CentOS': {
      include pritunl::centos
    }
    default:  { fail("'${::facts['os']['name']}' not supported") }
  }
}
