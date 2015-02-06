file_line { 'testFileK':
  ensure => present,
  path   => '/tmp/testFileK',
  line   => 'This line shall be present.',
}
