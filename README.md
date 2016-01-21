# puppet-timezone

#### Table of Contents

1. [Overview](#overview)
2. [Usage](#usage)
5. [Reference](#reference)
5. [Limitations](#limitations)

## Overview

Sets timezone on Debian based OS :

* Installs required package if needed
* Modifies the /etc/timezone file content
* Reconfigure timezone package using provided parameter

## Usage

```
include timezone
```

or

```
class { 'timezone':
	timezone => 'Europe/Paris',
}
```

Default values are

```
$timezone = 'UTC'
```

## Reference

* manifests/init.pp : Initiates the module, includes parameters and starts the package and config scripts.
* manifests/params.pp : Defines used parameters and related default values.
* manifests/package.pp : Installs required packages if needed.
* manifests/config.pp : Sets timezone.

## Limitations

Tested on Debian 8 using Puppet 3.7.  
Should work on any Debian and Ubuntu based OS.  
Puppet >= 3.3 required.