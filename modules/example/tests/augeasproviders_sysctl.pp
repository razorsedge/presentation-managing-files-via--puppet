sysctl { 'net.ipv4.ip_forward':
  ensure  => present,
  value   => '1',
  comment => 'This is a routing test.',
}
