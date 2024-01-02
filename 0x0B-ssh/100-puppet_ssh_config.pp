#!/usr/bin/env puppet

# using puppet to make Changes to our SSH config file

file { '/etc/ssh/ssh_config':
  ensure  => present,
  content => "
    # SSH client configuration
    Host *
    IdentityFile ~/.ssh/school
    PasswordAuthentication no
  ",
}

