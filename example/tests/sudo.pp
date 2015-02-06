sudo::conf { 'web':
  source => 'puppet:///example/etc/sudoers.d/web',
}
sudo::conf { 'admins':
  priority => 10,
  content  => "%admins ALL=(ALL) NOPASSWD: ALL",
}
sudo::conf { 'joe':
  priority => 60,
  source   => 'puppet:///example/etc/sudoers.d/users/joe',
}
