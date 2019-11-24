# Installs, Configurem and Set up a virtual host for nginx
#
# @summary Installs and configures nginx
#
# @example
#   include nginx
class nginx (
  $package_name = $nginx::params::package_name,
  $config_path = $nginx::params::config_path,
  $config_source = $nginx::params::config_source,
  $service_name = $nginx::params::service_name,
)
  inherits nginx::params {
  contain nginx::install
  contain nginx::config
  contain nginx::service

  Class['nginx::install']
  -> Class['nginx::config']
  ~> Class['nginx::service']
}
