#!/bin/sh
export PATH="/usr/local/rbenv/bin:$PATH"
eval "$(rbenv init -)"
rbenv exec bundle exec rails runner 'Kuroko2::Servers::WorkflowProcessor.new(log: nil, daemonize: false).run'
