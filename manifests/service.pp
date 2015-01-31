class webhookd::service inherits webhookd {

  if ! ($service_ensure in [ 'running', 'stopped' ]) {
    fail('service_ensure parameter must be running or stopped')
  }

  if $service_manage == true {
    service { 'webhookd':
      ensure     => $service_ensure,
      enable     => $service_enable,
      name       => 'webhookd',
      hasstatus  => true,
      hasrestart => true,
    }
  }

}
