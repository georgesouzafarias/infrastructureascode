# Install Nginx
#
# @sumary Installing Nginx
# @example
#   include nginx::install
class nginx::install {
  package{'install_nginx':
    ensure => 'present',
    name   => 'nginx',
  }
}
