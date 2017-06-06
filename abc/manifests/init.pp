class abc {
#     if $osfamily == 'Redhat' {
#                     file { '/etc/abc':
#                           ensure => present,
#                           content => 'apache present',
#                          }
#                         } 
#    else {
#           file { '/etc/abc':
#                   ensure => present,
#                   content => 'apache not present',
#         }
#         }
# }
    case $osfamily {
          'RedHat': {
                file { '/etc/abc':
                           ensure => present,
                           content => 'apache present',
                      }
                     }
          'Debian': {
                file { '/etc/abc':
                   ensure => present,
                   content => 'apache not present',
                     }
                    }
           'default': {
                   warning ('os family does not match')
                      }
        }
       } 
