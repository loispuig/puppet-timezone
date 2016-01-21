class timezone::package inherits timezone {

	case $::osfamily {
		'redhat', 'debian': {
			$tzdata_package_name = 'tzdata'
		}
		'gentoo': {
			$tzdata_package_name = 'sys-libs/timezone-data'
		}
	}

	package { $tzdata_package_name:
		ensure => 'present',
	}
}