file { '/tmp/testFileD':
  ensure  => present,
  mode    => '0644',
  content => "Your operating system is: ${::operatingsystem}\
${::operatingsystemrelease}\nYour CPU architecture\
is: ${::architecture}\n",
}
