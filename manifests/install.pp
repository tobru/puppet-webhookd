class webhookd::install inherits webhookd {

  package { 'webhookd':
    ensure   => $package_ensure,
    name     => $package_name,
    provider => 'gem',
  }

}
