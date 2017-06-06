class ssh::abc  inherits ssh {
         package { ['curl','telnet','lynx']:
                   ensure => present,
                  }
           $pkg1 = 'squid'
          notify { "checking variable concepts ${pkg1}":}
}
