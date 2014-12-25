root = "/home/www/apps/jesscia/current"
working_directory root
pid "#{root}/tmp/pids/unicorn_jessica.pid"
stderr_path "#{root}/log/unicorn_jessica.stderr.log"
stdout_path "#{root}/log/unicorn_jessica.log"

listen "/tmp/unicorn_jessica.sock"
worker_processes 3
timeout 30
#preload_app true
