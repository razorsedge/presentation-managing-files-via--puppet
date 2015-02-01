file { '/tmp/testFileB':
  ensure => present,
  mode   => '0644',
  source => [
    "puppet:///modules/example/fileB.${::operatingsystem}",
    "puppet:///modules/example/fileB",
  ],
}
