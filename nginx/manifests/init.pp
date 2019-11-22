# Installs, Configurem and Set up a virtual host for nginx
#
# @summary Installs and configures nginx
#
# @example
#   include nginx
class nginx {
  contain nginx::install
  contain nginx::config
  contain nginx::service

  Class['nginx::install']
  -> Class['nginx::config']
  ~> Class['nginx::service']
}
