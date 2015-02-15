file { '/tmp/testFileM':
  ensure  => present,
  mode    => '0644',
  content => file('/etc/resolv.conf'),
} ->
file_line { 'testFileM#search':
  ensure => present,
  path   => '/tmp/testFileM',
  line   => 'search localdomain',
  match  => '^search .*',
}
