file { '/tmp/testFileO':
  ensure  => present,
  mode    => '0644',
  content => file('/usr/lib64/xulrunner/platform.ini'),
} ->
ini_setting { 'testFileO#foo#bar':
  ensure  => present,
  path    => '/tmp/testFileO',
  section => 'Build',
  setting => 'testN',
  value   => 'WeDidIt',
}
