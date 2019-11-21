# Installs, Configurem and Set up a virtual host for nginx
#
# @summary Installs and configures nginx
#
# @example
#   include nginx
class nginx {
  contain nginx::install
}
