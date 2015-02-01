concat { '/tmp/testFileL':
  ensure => present,
  mode   => '0644'
}
concat::fragment { 'testfileL-01':
  target  => '/tmp/testFileL',
  content => "This is a concat line 01.\n",
  order   => '01'
}
concat::fragment { 'testfileL-02':
  target => '/tmp/testFileL',
  source => 'puppet:///modules/example/fileA',
  order  => '02'
}
