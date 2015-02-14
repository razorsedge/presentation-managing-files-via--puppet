file { '/tmp/testFileO':
  ensure  => present,
  mode    => '0644',
  content => file('/usr/share/perl5/vendor_perl/XML/SAX/ParserDetails.ini'),
} ->
ini_setting { 'testFileO#foo#bar':
  ensure  => present,
  path    => '/tmp/testFileO',
  section => 'Build',
  setting => 'testN',
  value   => 'WeDidIt',
}
