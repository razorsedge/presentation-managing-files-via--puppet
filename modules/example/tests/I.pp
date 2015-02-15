$variableA = 'good'
$variableB = 'horrible'

file { '/tmp/testFileI':
  ensure  => present,
  mode    => '0644',
  content => epp('example/templateA.epp'),
}
