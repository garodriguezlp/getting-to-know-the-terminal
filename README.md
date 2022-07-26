# getting-to-know-the-terminal

## Demo

1. Open the following shells using `tmux`

```bash
tmux new-session \; split-window -h "zsh" \; split-window -v "fish" \; select-pane -t 0 \; split-window -v "pwsh" \; attach
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

3. Install `oh-my-zsh`

```bash
# Installation  
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Inspecting the zshrc
$EDITOR ~/.zshrc
```
4. Install `oh-my-bash`

```bash
# Installation  
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
# Inspecting the zshrc
$EDITOR ~/.bashrc
```
5. Install `oh-my-fish`

```bash
# Installation  
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
# Inspecting the zshrc
$EDITOR ~/.config/fish/conf.d/omf.fish   
```