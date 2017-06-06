class apache {
       package {'httpd':
                ensure => present,
               }
       file {'/var/www/html/index.html':
                 source => 'puppet:///modules/apache/index.html',
                 notify => Service['httpd'],
            }
       service {'httpd':
                ensure => running,
                require => Package['httpd'],
             }
           }

