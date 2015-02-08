file { '/tmp/testFileK':
  ensure  => present,
  mode    => '0644',
  content => file('/etc/resolv.conf'),
} ->
augeas { 'testFileK' :
  incl    => '/tmp/testFileK',
  lens    => 'Resolv.lns',
  changes => 'set domain example.net',
}
