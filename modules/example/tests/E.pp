$variableA = 'good'
$variableB = 'horrible'

file { '/tmp/testFileE':
  ensure  => present,
  mode    => '0644',
  content => template('example/templateA.erb'),
}
