# Increase the amount of traffic an Nginx server can handle.

# Increase the ULIMIT of the default file
exec { 'fix--for-nginx:
	# Modify the ULIMIT value
	command => '/bin/sed -i "s/15/4096/" /etc/default/nginx',
	path => '/etc/init.d/',
}
# >
# Restart Nginx
exec { 'nginx-restart':
	command => '/etc/init.d/nginx restart',
	path => '/etc/init.d/'
}
