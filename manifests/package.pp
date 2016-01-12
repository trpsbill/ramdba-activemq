class activemq::package {
  file { '/tmp/activemq-1-1.el6.x86_64.rpm':
    source => 'puppet:///modules/activemq/activemq-1-1.el6.x86_64.rpm',
  }

  package { 'activemq':
    source  => '/tmp/activemq-1-1.el6.x86_64.rpm',
    require => File['/tmp/activemq-1-1.el6.x86_64.rpm'],
  }
}
