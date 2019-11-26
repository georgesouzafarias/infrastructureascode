# Install Nginx
#
# @sumary Installing Nginx
# @example
#   include nginx::install
class nginx::install (
  $package_name = $nginx::params::package_name,
) inherits nginx::params {
  package{'install_nginx':
    ensure => $nginx::package_ensure,
    name   => $package_name,
  }
}
