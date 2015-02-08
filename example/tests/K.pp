file { '/tmp/testFileK':
  ensure  => present,
  mode    => '0644',
  content => file('/etc/sysconfig/firstboot'),
} ->
augeas { 'testFileK' :
  incl    => '/tmp/testFileK',
  lens    => 'Shellvars.lns',
  changes => 'set RUN_FIRSTBOOT YES',
}
