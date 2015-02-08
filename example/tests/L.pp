file { '/tmp/testFileL':
  ensure => present,
  mode   => '0644',
} ->
file_line { 'testFileL':
  ensure => present,
  path   => '/tmp/testFileL',
  line   => 'This line shall be present.',
}
