ini_setting { 'testFileN#foo#bar':
  ensure  => present,
  path    => '/tmp/testFileN',
  section => 'foo',
  setting => 'bar',
  value   => 'GIBBERISH',
}
