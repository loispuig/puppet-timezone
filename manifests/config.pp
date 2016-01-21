class timezone::config inherits timezone {

	case $::osfamily {
		'debian': {
			$tzdata_config_file = '/etc/timezone'
		}
	}

	file { $tzdata_config_file:
		ensure => file,
		content => $timezone,
		notify => Exec['tzdata-reconfigure'],
    }

    exec { 'tzdata-reconfigure':
		command => 'dpkg-reconfigure -f noninteractive tzdata',
		path    => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ],
		require => File[$tzdata_config_file],
	}
}