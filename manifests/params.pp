class webhookd::params (
  $package_ensure      = present,
  $package_provider    = undef,
  $service_enable      = true,
  $service_ensure      = running,
  $service_manage      = true,
  $webhookd_configfile = '/etc/webhookd/webhookd.yaml',
  $webhookd_config     = {
    global     => {
      loglevel => 'debug',
      logfile  => '/var/log/webhookd.log',
      username => 'deployer',
      password => 'Deploy1T',
    }
  },
  $daemon_user          = 'root',
  $daemon_group         = 'root',
  $daemon_port          = '8088',
  $daemon_ssl_enabled   = 'no',
  $daemon_ssl_key       = '/etc/ssl/private/mykey.pem',
  $daemon_ssl_cert      = '/etc/ssl/certs/mycert.pem',
) {

}
