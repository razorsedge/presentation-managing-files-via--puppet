concat_build { 'testFileM':
  target => '/tmp/testFileM',
  order  => ['*.tmp'],
}
concat_fragment { 'testFileM+01.tmp':
  content => 'Some random stuff',
}
concat_fragment { 'testFileM+02.tmp':
  content => 'Some other random stuff',
}
