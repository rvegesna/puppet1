class motd {
    file {'/etc/motd':
            source => 'puppet:///modules/motd/motd',
         }
     $game1 = hiera(game)
     notify { "name of the game is ${game1}" :}
         }
