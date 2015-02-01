file { '/tmp/testFileJ':
  ensure  => present,
  mode    => '0644',
  content => file('/etc/resolv.conf'),
} ->
file_line { 'testFileJ#search':
  ensure => present,
  path   => '/tmp/testFileJ',
  line   => 'search localdomain',
  match  => '^search .*',
}
