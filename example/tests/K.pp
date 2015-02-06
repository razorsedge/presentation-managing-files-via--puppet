file { '/tmp/testFileK':
  ensure => present,
  mode   => '0644',
} ->
file_line { 'testFileK':
  ensure => present,
  path   => '/tmp/testFileK',
  line   => 'This line shall be present.',
}
