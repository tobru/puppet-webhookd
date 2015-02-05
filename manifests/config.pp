class webhookd::config inherits webhookd {

  file {
    $webhookd_configfile:
      ensure  => present,
      content => inline_template("<%= @webhookd_config.to_yaml %>\n");
    '/etc/default/webhookd':
      ensure  => present,
      content => template('webhookd/webhookd-default.erb'),
  }

}
