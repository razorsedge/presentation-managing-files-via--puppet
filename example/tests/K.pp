file { '/tmp/testFileK':
  ensure  => present,
  mode    => '0644',
  content => file('/usr/lib64/xulrunner/platform.ini'),
} ->
ini_setting { '/tmp/testFileK#foo#bar':
  ensure  => present,
  path    => '/tmp/testFileK',
  section => 'foo',
  setting => 'bar',
  value   => 'GIBBERISH',
}
