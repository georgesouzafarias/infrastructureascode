# Manages the nginx.conf file 
#
#@summary Manages the nginx.conf file 
#
# @example
#   include nginx::config
class nginx::config (
  $config_path = $nginx::params::config_path,
  $config_source = $nginx::params::config_source,
) inherits nginx::params {
  file {'nginx_config':
    ensure => 'present',
    path   => $config_path,
    source => $config_source,
    notify => 'Service[nginx_service]',
  }
}
