$options = [ 'blue', 'heavy', 'yummy' ]
$item = 'The sky is'

file { '/tmp/testFileG':
  ensure  => present,
  mode    => '0644',
  content => inline_template("${item}: <%= @options.join ' ' %>\n"),
}
