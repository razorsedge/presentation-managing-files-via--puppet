file { '/tmp/testFileL':
  ensure  => present,
  mode    => '0644',
  content => file('/etc/resolv.conf'),
} ->
file_line { 'testFileL#search':
  ensure => present,
  path   => '/tmp/testFileL',
  line   => 'search localdomain',
  match  => '^search .*',
}
