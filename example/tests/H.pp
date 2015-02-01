file { '/tmp/testFileH':
  ensure  => present,
  mode    => '0644',
  content => file('/etc/hosts'),
}
