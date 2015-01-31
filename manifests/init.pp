# == Class: webhookd
#
# Main class for managing webhookd
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream webhookd servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_webhookd_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'webhookd':
#    servers => [ 'pool.webhookd.org', 'webhookd.local.company.com' ],
#  }
#
# === Authors
#
# Tobias Brunner <tobias@tobru.ch>
#
# === Copyright
#
# Copyright 2015 Tobias Brunner
#
class webhookd (
  $package_ensure      = $webhookd::params::package_ensure,
  $service_enable      = $webhookd::params::service_enable,
  $service_ensure      = $webhookd::params::service_ensure,
  $service_manage      = $webhookd::params::service_manage,
  $webhookd_configfile = $webhookd::params::webhookd_configfile,
  $webhookd_config     = $webhookd::params::webhookd_config,
) inherits webhookd::params {

  Anchor['webhookd::begin'] ->
    Class['webhookd::install'] ->
    Class['webhookd::config']  ->
    Class['webhookd::service'] ->
  Anchor['webhookd::end']

}
