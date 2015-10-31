# == Class: motd
#
# A puppet demo module for SOE.
#
# === Parameters
#
# === Variables
#
#
# === Examples
#
#
# === Authors
#
# Martin Liu <martin@aws-faq.com>
#

class motd {

	file { '/etc/motd':
		ensure => file,
		content => template("${module_name}/motd.erb"),
		owner => root, 
		group => root,
		mode  => '0644',
	}
	
}
