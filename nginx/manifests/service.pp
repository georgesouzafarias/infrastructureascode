# Manages nginx daemon
#
# @summary Manages nginx daemon
#
## @example
#   include nginx::service
class nginx::service (
  $service_name = $nginx::params::service_name,
  ) inherits nginx::params {
  service { 'nginx_service':
    ensure     => 'running',
    name       => $service_name,
    enable     => true,
    hasrestart => true,
  }
}
