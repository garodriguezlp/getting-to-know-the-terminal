# Getting to Know the Terminal

## Demos

### Multiple shells in a single host

- Exploring all the installed shells

```bash
tmux new-session \; split-window -h "zsh" \; split-window -v "fish" \; select-pane -t 0 \; split-window -v "pwsh" \; attach
```

### Built-ins, Scripts, Aliases, Functions and Programs 

- Built-ins

```bash
type help
man builtins
```

- Aliases

```bash
type l
alias
```
- Functions

```bash
function hello { echo Hello World; }; hello
type hello
```

- Programs and Scripts

```bash
type ./script.sh
type git
```

### Configuring the shells

- Install `oh-my-zsh`

```bash
# Installation  
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Inspecting the zshrc
$EDITOR ~/.zshrc
```
- Install `oh-my-bash`

```bash
# Installation  
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
# Inspecting the zshrc
$EDITOR ~/.bashrc
```

- Install `oh-my-fish`

```bash
# Installation  
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
# Inspecting the zshrc
$EDITOR ~/.config/fish/conf.d/omf.fish   
```