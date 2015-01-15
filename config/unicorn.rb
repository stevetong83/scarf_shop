root = "/home/deploy/pretty_as_a_picture_scarves/current"
working_directory root
pid "#{root}/tmp/pids/unicorn.pid"
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"

listen "/tmp/unicorn.pretty_as_a_picture_scarves.sock"
worker_processes 2
timeout 30