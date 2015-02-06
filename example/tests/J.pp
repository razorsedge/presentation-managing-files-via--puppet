concat { '/tmp/testFileJ':
  ensure => present,
  mode   => '0644'
}
concat::fragment { 'testfileJ-01':
  target  => '/tmp/testFileJ',
  content => "This is a concat line 01.\n",
  order   => '01'
}
concat::fragment { 'testfileJ-02':
  target => '/tmp/testFileJ',
  source => 'puppet:///modules/example/fileA',
  order  => '02'
}
