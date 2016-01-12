class activemq::service (
  $ensure,
  $service_enable = $::activemq::params::service_enable
) {
  service {'activemq':
    enable     => $service_enable,
    ensure     => $ensure,
    hasstatus  => true,
    hasrestart => true,
    require    => Class['activemq::package'],
  }
}
