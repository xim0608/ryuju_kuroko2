#!/bin/bash
export RBENV_ROOT=/usr/local/rbenv
export PATH="$RBENV_ROOT/bin:$PATH"
eval "$(rbenv init -)"
bundle exec rails runner 'Kuroko2::Servers::WorkflowProcessor.new(log: nil, daemonize: false).run'
