class xyz {
         $player1 = 'saurav'
      file { '/etc/xyz':
           ensure => present,
           content => template('xyz/xyz.erb'),
           }
           }
