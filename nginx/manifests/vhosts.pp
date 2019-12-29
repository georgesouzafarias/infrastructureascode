# Generate a virtual hosts file for nginx. Requires node-specific Hiera data
#
# @summary Generate a virtual hosts file for nginx
#
# @example
#   include nginx::vhosts
class nginx::vhosts (
  $vhosts_dir = $nginx::params::vhosts_dir,
) inherits nginx::params {
  file { "${nginx::vhosts_name}.conf":
    ensure  => $nginx::vhosts_ensure,
    content => epp('nginx/vhosts.conf.epp'),
    path    => "${vhosts_dir}/${nginx::vhosts_name}.conf",
  }
  file { $nginx::vhosts_root:
    ensure => 'directory',
  }
}
