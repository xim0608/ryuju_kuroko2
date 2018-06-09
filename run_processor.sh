#!/bin/sh
#export PATH="/usr/local/rbenv/bin:$PATH"
#echo $(which rbenv)
eval "$(/usr/local/rbenv/bin/rbenv init -)"
/usr/local/rbenv/bin/rbenv exec bundle exec rails runner 'Kuroko2::Servers::WorkflowProcessor.new(log: nil, daemonize: false).run'
