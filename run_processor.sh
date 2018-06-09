#!/bin/bash
export PATH="/usr/local/rbenv/bin:$PATH"
echo $(which rbenv)
eval "$(rbenv init -)"
rbenv exec bundle exec rails runner 'Kuroko2::Servers::WorkflowProcessor.new(log: nil, daemonize: false).run'
