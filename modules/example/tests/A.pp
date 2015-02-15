file { '/tmp/testFileA':
  ensure => present,
  mode   => '0644',
  source => "puppet:///modules/example/fileA",
}
