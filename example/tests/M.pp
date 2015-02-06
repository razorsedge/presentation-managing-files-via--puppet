ini_setting { 'testFileM#foo#bar':
  ensure  => present,
  path    => '/tmp/testFileM',
  section => 'foo',
  setting => 'bar',
  value   => 'GIBBERISH',
}
