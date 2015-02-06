datacat { '/tmp/testFileO':
  ensure   => present,
  mode     => '0644',
  template => 'example/templateO.erb',
}
datacat_fragment { "${::fqdn} in device hostgroup":
  target => '/tmp/testFileO',
  data   => {
    myhostgroup => [ $::fqdn ],
  },
  order  => '01',
}
$ilo_fqdn = regsubst($::fqdn, '\.', '-ilo.')
datacat_fragment { "${ilo_fqdn} in device hostgroup":
  target => '/tmp/testFileO',
  data   => {
    myhostgroup => [ $ilo_fqdn ],
  },
  order  => '02',
}
