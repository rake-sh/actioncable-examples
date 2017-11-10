threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }.to_i
threads threads_count, threads_count
bind "unix:///home/deploy/apps/actioncable-examples/shared/tmp/sockets/actioncable-examples-puma.sock"
environment ENV.fetch("RAILS_ENV") { "production" }
workers ENV.fetch("WEB_CONCURRENCY") { 2 }
daemonize true
pidfile '/home/deploy/apps/actioncable-examples/shared/tmp/pids/puma.pid'