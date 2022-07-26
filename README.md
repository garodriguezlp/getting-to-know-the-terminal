# getting-to-know-the-terminal

## Demo

1. Open the following shells using `tmux`

```bash
$ tmux new-session \; split-window -h "zsh" \; split-window -v "fish" \; select-pane -t 0 \; split-window -v "pwsh" \; attach
```

2. Built-ins, Scripts, Aliases, Functions and Programs 

```bash
# Built-ins
type help
man builtins
# Alias
type l
alias
# Function
function hello { echo Hello World; }; hello
type hello
# Programs and Scripts
type ./script.sh
type git
```