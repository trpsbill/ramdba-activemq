class activemq::package {
  file { '/tmp/activemq-5.10.0-2.el6.noarch.rpm':
    source => 'puppet:///modules/activemq/activemq-5.10.0-2.el6.noarch.rpm',
  }

  package { 'activemq':
    provider => rpm,
    source   => '/tmp/activemq-5.10.0-2.el6.noarch.rpm',
    require  => File['/tmp/activemq-5.10.0-2.el6.noarch.rpm'],
  }
}
