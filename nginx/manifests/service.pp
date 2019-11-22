# Manages nginx daemon
#
# @summary Manages nginx daemon
#
## @example
#   include nginx::service
class nginx::service {
  service { 'nginx_service':
    ensure     => 'running',
    name       => 'nginx',
    enable     => true,
    hasrestart => true,
  }
}
