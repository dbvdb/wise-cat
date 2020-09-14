# tmux 

## Session Management

1. Create new tmux session:
```bash
tmux attach -t <session_name>
```

2. Attach to a previous defined session
```bash
tmux switch -t <session_name>
```

3. List all existing sessions:
```bash
tmux list-sessions
```

4. Detach from currently attached session:
```bash
tmux detach (prefix + d)
```

