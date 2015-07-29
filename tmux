tmux new-session -s metaruby -n demo -d
tmux send-keys -t metaruby 'cd ~/projects/metaruby' C-m
tmux send-keys -t metaruby 'vim lib/*.rb' C-m
tmux split-window -h -p 50 -t metaruby
tmux send-keys -t metaruby:demo.2 'pry -I./lib' C-m
tmux attach -t metaruby
