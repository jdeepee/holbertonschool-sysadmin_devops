from fabric.api import env, run, put
env.hosts = ['158.69.70.185']
env.key_filename = '/Users/Josh/.ssh/id_rsa.pub'
env.user = ["admin"]

def uptime():
	run('uptime')

def disk_space():
	run('df -h')

def ship():
	put('/Users/Josh/Documents/Holberton_School/twitter-clone/custom_404.html', '/www/data')
	put('/Users/Josh/Documents/Holberton_School/twitter-clone/hello_world.php', '/www/data')
	put('/Users/Josh/Documents/Holberton_School/twitter-clone/index.php', '/www/data')
	put('/Users/Josh/Documents/Holberton_School/twitter-clone/login.php', '/www/data')
	put('/Users/Josh/Documents/Holberton_School/twitter-clone/styles.css', '/www/data')

