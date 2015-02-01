file { '/tmp/testFileC':
  ensure  => present,
  mode    => '0644',
  content => 'Some fancy string.',
}
