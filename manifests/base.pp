class { 'motd': }

exec { 'apt-get-update':
  command => '/usr/bin/apt-get update',
}

package { 'nginx':
  ensure => installed,
  require => Exec['apt-get-update'],
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
