

node default {
  Exec {
    path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
  }

  exec { 'apt-get-update':
    command => 'apt-get update',
  } ->

  package { ['ruby', 'git', 'software-properties-common']:
    ensure        => installed,
    allow_virtual => true,
  } ->

  package { ['deep_merge', 'r10k']:
    ensure   => installed,
    provider => 'gem',
  } ->

  exec { 'r10k-puppetfile-install':
    command => 'r10k -v info puppetfile install && touch modules/.r10k_stamp',
    cwd     => '/vagrant',
    onlyif  => 'test ! -e modules/.r10k_stamp || test modules/.r10k_stamp -ot Puppetfile',
  } ->

  augeas { 'remove-deprecated-templatedir-parameter':
    context => '/files/etc/puppet/puppet.conf/main',
    changes => [
      'rm templatedir',
    ],
  } 

  host { 'cc-esc-01':
    ensure       => 'present',
    ip           => '172.31.20.11',
  }
  host { 'cc-esc-02':
    ensure       => 'present',
    ip           => '172.31.20.12',
  }
  host { 'cc-esc-03':
    ensure       => 'present',
    ip           => '172.31.20.13',
  }
  host { 'cc-esc-ctrl':
    ensure       => 'present',
    ip           => '172.31.20.10',
  }
}

