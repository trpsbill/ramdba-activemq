class activemq::package (
  $version,
  $package
) {
  package { $package:
    ensure => $version,
    notify => Service['activemq'],
  }
}
