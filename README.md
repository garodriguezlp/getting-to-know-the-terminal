# getting-to-know-the-terminal

## Demo

1. Open the following shells using `tmux`

```bash
$ tmux new-session \; split-window -h "zsh" \; split-window -v "fish" \; select-pane -t 0 \; split-window -v "pwsh" \; attach
```