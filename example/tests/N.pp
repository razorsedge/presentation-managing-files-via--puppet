file { '/tmp/testFileN':
  ensure  => present,
  mode    => '0644',
  content => file('/usr/lib64/xulrunner/platform.ini'),
} ->
ini_setting { 'testFileN#foo#bar':
  ensure  => present,
  path    => '/tmp/testFileN',
  section => 'Build',
  setting => 'testN',
  value   => 'WeDidIt',
}
