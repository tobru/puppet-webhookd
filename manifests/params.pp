class webhookd::params (
  $package_ensure      = present,
  $service_enable      = true,
  $service_ensure      = running,
  $service_manage      = true,
  $webhookd_configfile = '/etc/webhookd/webhookd.yml',
  $webhookd_config     = {
    global     => {
      loglevel => 'debug',
      logfile  => '/var/log/webhookd.log',
      username => 'deployer',
      password => 'Deploy1T',
    }
  },
) {

}
