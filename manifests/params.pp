class activemq::params {
  $version = 'present'
  $package = 'activemq'
  $ensure  = 'running'
  $mq_broker_name = $::fqdn
  $service_enable = 'true'
  $jdbcUrl = 'jdbc:postgresql://xrs1z1pga01m.xrssaas.local:5432,xrs1z2pga01hs.xrssaas.local:5432/activemq'
  $postgres_user = 'xrsamq'
  $postgres_password = '8JgMh3jMbX'
}
