class activemq (
  $version = $activemq::params::version,
  $package = $activemq::params::package,
  $ensure  = $activemq::params::ensure,
  $mq_broker_name = $activemq::params::ensure,
  $jdbcurl = $activemq::params::jdbcurl,
  $postgres_user = $activemq::params::postgres_user,
  $postgres_password = $activemq::params::postgres_password,
) inherits activemq::params {
  
  class { 'activemq::package':
    version => $version,
    package => $package,
    notify  => Class['activemq::service']
  }

  class { 'activemq::config':
    package => $package,
    require => Class['activemq::package'],
    notify  => Class['activemq::service'],
  }

  class { 'activemq::service':
    ensure => $ensure,
  }

}
