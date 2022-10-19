lock '~> 3.17.1'

set :application, 'sem7-agile'
set :repo_url,    'https://github.com/VABrimstone/ticket-system'
set :branch,      'main'

set :deploy_to, '/home/deploy/apps/sem7-agile'

append :linked_files, '.env', 'config/master.key'
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/uploads'

set :rbenv_prefix, '/usr/bin/rbenv exec'
