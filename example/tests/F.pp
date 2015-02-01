$variableA = 'good'
$variableB = 'horrible'

file { '/tmp/testFileF':
  ensure  => present,
  mode    => '0644',
  content => template('example/templateA.erb','example/templateB.erb'),
}
