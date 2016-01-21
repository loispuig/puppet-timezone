class timezone (
	$timezone = $::timezone::params::timezone,
) inherits timezone::params {

	anchor { 'timezone::begin': } ->
		class { '::timezone::package': } ->
		class { '::timezone::config': } ->
	anchor { 'timezone::end': }
}
