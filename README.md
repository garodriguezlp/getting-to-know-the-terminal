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

- `oh-my-zsh`

```bash
# Installation  
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Inspecting the zshrc
$EDITOR ~/.zshrc
```
- `oh-my-bash`

```bash
# Installation  
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
# Inspecting the zshrc
$EDITOR ~/.bashrc

# Modify the shell variable that controls the theme
#   OSH_THEME="random"

# Bring old stuff we'll need in the future
$EDITOR ~/.bashrc.omb-*
#   for i in $(ls -A $HOME/.bashrc.d/); do source $HOME/.bashrc.d/$i; done
```

- `oh-my-fish`

```bash
# Installation  
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
# Inspecting the zshrc
$EDITOR ~/.config/fish/conf.d/omf.fish   
```

### Configuring the prompt

- Install a NerdFont on you local machine (the one running the browser) from [nerdfonts.com](https://www.nerdfonts.com/)

- Change the terminal front for you `vscode`. Example

```json
    "terminal.integrated.fontFamily": "CaskaydiaCove Nerd Font",
```

- Install `starship`

```bash
curl -sS https://starship.rs/install.sh | sh
```

- Enable `starship` for `powershell`

```ps1
# Create the $PROFILE file
ni $PROFILE -Force

# Edit the $PROFILE file
& $env:EDITOR $PROFILE

# Paste the following contents into the $PROFILE file
#   Invoke-Expression (&starship init powershell)
```

- Install latest version of `PSReadLine` and enabling one nice feature

```ps1
Install-Module -Name PowerShellGet -Force
Install-Module -Name PSReadLine -Force

# Paste the following contents into the $PROFILE file
#   Set-PSReadLineOption -EditMode Emacs `
#       -PredictionSource History `
#       -PredictionViewStyle ListView
```

### Playing with the shells

- Install `spring-boot-cli` using `SDKMAN` in `bash`

```bash
sdk install springboot
```

- Enable completions (Sourcing files) for `bash`

```bash
echo ". \$SDKMAN_CANDIDATES_DIR/springboot/current/shell-completion/bash/spring" >> $HOME/.bashrc
```

```bash
spring init -d web .
```

- Add a new REST Controller

```java
    @RestController
    public static class HelloWorldController {
        @GetMapping("/hello")
        public String sayHello() {
            return "Hello World!!";
        }
    }
```

- Run the app from `fish`
