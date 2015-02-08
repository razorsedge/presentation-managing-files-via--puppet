sshd_config { 'PermitRootLogin':
  ensure => present,
  value  => 'no',
}
