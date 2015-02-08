class { 'sudo':
  config_file_replace => false,
}
sudo::conf { 'web':
  source => 'puppet:///modules/example/etc/sudoers.d/web',
}
sudo::conf { 'admins':
  priority => 10,
  content  => "%admins ALL=(ALL) NOPASSWD: ALL",
}
sudo::conf { 'joe':
  priority => 60,
  source   => 'puppet:///modules/example/etc/sudoers.d/joe',
}
