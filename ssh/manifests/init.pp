class ssh {
            $pkg1 = 'telnet'
          $name123 = $::osfamily? {
                   'Redhat' => 'sshd',
                   'ubuntu' => 'ssh',
                   'default' => 'ssh',
           }
          package { 'openssh':
                    ensure => present,
                   }
         file { '/etc/ssh/sshd_config':
                  source => 'puppet:///modules/ssh/sshd_config',
                  notify => Service['sshd'],
              }
         service {'sshd':
                      name => $name123,
                      ensure => running,
                      require => Package['openssh'],
                  }
         group { 'dba':
                   ensure => 'present',
                   gid    => '14',
                }

       notify { "this is variable defined in site ${operatingsystem}" :}
}
