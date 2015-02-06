shellvar { 'HOSTNAME':
  ensure => present,
  target => '/etc/sysconfig/network',
  value  => 'host.example.com',
}
