datacat { '/tmp/testFileP':
  ensure   => present,
  mode     => '0644',
  template => 'example/templateP.erb',
}
datacat_fragment { "${::fqdn} in device hostgroup":
  target => '/tmp/testFileP',
  data   => { myhostgroup => [ $::fqdn ], },
  order  => '01',
}
$ilo_fqdn = regsubst($::fqdn, '\.', '-ilo.')
datacat_fragment { "${ilo_fqdn} in device hostgroup":
  target => '/tmp/testFileP',
  data   => { myhostgroup => [ $ilo_fqdn ], },
  order  => '02',
}
