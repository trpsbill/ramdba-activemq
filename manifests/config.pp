class activemq::config (
  $path = '/opt/activemq/conf/activemq.xml',
  $package,
) {
  File {
    owner   => 'activemq',
    group   => 'activemq',
    mode    => '0644',
    notify  => Service['activemq'],
    require => Package[$package],
  }

  file { 'activemq.xml':
    ensure  => file,
    path    => $path,
    owner   => 'activemq',
    group   => 'activemq',
    mode    => '0600',
    content => template("${module_name}/activemq.xml.erb"),
  }

  file { '/etc/init.d/activemq':
    ensure => file,
    source => 'puppet:///modules/activemq/init/activemq',
    owner  => 'root',
    group  => 'root',
    mode   => '0600',
  }

  file { '/etc/default/activemq':
    ensure => file,
    source => 'puppet:///modules/activemq/default/activemq',
    owner  => 'root',
    group  => 'root',
    mode   => '0600',
  }

  file { '/opt/activemq/conf/log4j.properties':
    ensure => file,
    owner  => 'activemq',
    group  => 'activemq',
    mode   => '0600',
    source => 'puppet:///modules/activemq/log4j.properties',
  }
}
