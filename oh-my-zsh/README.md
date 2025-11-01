# Oh My Zsh Konfiguration

Dieses Repository enthält meine persönlichen Oh My Zsh Einstellungen mit Powerlevel10k Theme.

**Website:** https://ohmyz.sh  
**Theme:** https://github.com/romkatv/powerlevel10k

## Inhalte

- `zshrc` - Hauptkonfigurationsdatei für Zsh/Oh My Zsh
- `p10k.zsh` - Powerlevel10k Theme-Konfiguration

## Installation

### Voraussetzungen

- Zsh Shell (meist bereits auf macOS/Linux installiert)
- Git

### macOS

#### Zsh installieren

Zsh ist standardmäßig auf macOS installiert. Wenn du eine neuere Version benötigst:

```bash
brew install zsh
```

Falls du Zsh als Standard-Shell verwenden möchtest:
```bash
chsh -s /bin/zsh
# oder bei neuerer Version
chsh -s $(brew --prefix)/bin/zsh
```

#### Oh My Zsh installieren

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

#### Powerlevel10k installieren

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

### Linux

#### Zsh installieren

**Debian/Ubuntu:**
```bash
sudo apt update
sudo apt install zsh git
```

**Fedora/RHEL:**
```bash
sudo dnf install zsh git
```

**Arch Linux:**
```bash
sudo pacman -S zsh git
```

#### Oh My Zsh installieren

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

#### Powerlevel10k installieren

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

### Windows (mit WSL oder Git Bash)

#### Windows Subsystem for Linux (WSL)

1. Installiere WSL und eine Linux-Distribution (z.B. Ubuntu)
2. Folge den Linux-Installationsanweisungen oben

#### Git Bash (begrenzte Unterstützung)

Oh My Zsh funktioniert nicht nativ in Git Bash. Verwende stattdessen WSL oder eine Linux-VM.

## Konfiguration einrichten

### 1. Konfigurationsdateien kopieren

**macOS/Linux:**

```bash
# Kopiere zshrc
cp oh-my-zsh/zshrc ~/.zshrc

# Kopiere p10k.zsh
cp oh-my-zsh/p10k.zsh ~/.p10k.zsh
```

**Oder mit symbolischen Links (für automatische Updates):**

```bash
# Backup der vorhandenen Dateien erstellen (falls vorhanden)
mv ~/.zshrc ~/.zshrc.backup 2>/dev/null
mv ~/.p10k.zsh ~/.p10k.zsh.backup 2>/dev/null

# Symbolische Links erstellen (passe den Pfad an)
ln -s /pfad/zum/repository/oh-my-zsh/zshrc ~/.zshrc
ln -s /pfad/zum/repository/oh-my-zsh/p10k.zsh ~/.p10k.zsh
```

### 2. Terminal neu starten

Starte ein neues Terminal oder führe aus:
```bash
source ~/.zshrc
```

### 3. Powerlevel10k Konfigurationsassistent (optional)

Beim ersten Start wird ein interaktiver Konfigurationsassistent gestartet. Du kannst:
- Den Assistenten durchlaufen und danach `~/.p10k.zsh` überschreiben
- Oder direkt `Esc` drücken, um die vorkonfigurierte Datei zu verwenden

## Nerd Fonts (empfohlen)

Für die korrekte Darstellung von Icons wird eine Nerd Font empfohlen.

### macOS

```bash
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono-nerd-font
# oder
brew install --cask font-meslo-lg-nerd-font
```

### Linux

**Mit Homebrew:**
```bash
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono-nerd-font
```

**Manuell:**
1. Lade eine Nerd Font von https://www.nerdfonts.com herunter
2. Installiere in `~/.fonts` oder `/usr/share/fonts`
3. `fc-cache -f -v`

**Mit apt (für einige Fonts):**
```bash
sudo apt install fonts-nerd-font
```

### Windows (WSL)

Folge den Linux-Anweisungen innerhalb der WSL-Distribution.

### Font im Terminal aktivieren

Nach der Installation:
1. Öffne die Einstellungen deines Terminals
2. Wähle die installierte Nerd Font aus
3. Starte das Terminal neu

Beliebte Nerd Fonts:
- MesloLGS NF (Empfehlung für Powerlevel10k)
- JetBrains Mono Nerd Font
- FiraCode Nerd Font
- Hack Nerd Font

## Optionale Abhängigkeiten

### Pyenv (für Python-Versionsverwaltung)

**macOS:**
```bash
brew install pyenv
```

**Linux:**
```bash
curl https://pyenv.run | bash
```

Die `.zshrc` erkennt Pyenv automatisch, falls installiert.

### Python Virtual Environments

Die Konfiguration unterstützt Python Virtual Environments automatisch.

## Plugins

Die Konfiguration verwendet folgende Plugins:
- `git` - Git-Aliase und Funktionen
- `virtualenv` - Python Virtual Environment Unterstützung

Weitere Plugins können in `~/.zshrc` unter `plugins=(...)` hinzugefügt werden.

Beliebte zusätzliche Plugins:
- `z` - Intelligentes Verzeichnis-Navigation
- `docker` - Docker-Aliase
- `kubectl` - Kubernetes-Aliase
- `aws` - AWS CLI Unterstützung

Installation:
```bash
# Beispiel: z Plugin
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh/custom/plugins/z
```

Dann in `~/.zshrc` zu `plugins=(...)` hinzufügen.

## Aktualisieren

### Oh My Zsh aktualisieren

```bash
omz update
```

### Powerlevel10k aktualisieren

```bash
git -C ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k pull
```

## Anpassungen

### Theme anpassen

Bearbeite `~/.p10k.zsh`, um das Powerlevel10k Theme anzupassen. Führe aus, um den Konfigurationsassistenten erneut zu starten:

```bash
p10k configure
```

### Zsh-Konfiguration anpassen

Bearbeite `~/.zshrc`, um Aliase, Plugins oder andere Einstellungen zu ändern.

## Funktionen

Die Konfiguration bietet:
- Schönes, farbiges Prompt mit Git-Informationen
- Python-Versionsanzeige bei aktivem Virtual Environment
- OS-Icon im Prompt
- Unterstützung für Pyenv
- Git-Integration mit Statusanzeige
- Intelligente Verzeichnis-Anzeige

## Probleme beheben

### Oh My Zsh wird nicht geladen

- Überprüfe, ob Zsh die Standard-Shell ist: `echo $SHELL`
- Stelle sicher, dass `~/.zshrc` existiert
- Überprüfe die Datei auf Syntax-Fehler: `zsh -n ~/.zshrc`

### Powerlevel10k wird nicht angezeigt

- Überprüfe, ob Powerlevel10k installiert ist: `ls ~/.oh-my-zsh/custom/themes/powerlevel10k`
- Stelle sicher, dass `ZSH_THEME="powerlevel10k/powerlevel10k"` in `~/.zshrc` steht
- Überprüfe, ob `~/.p10k.zsh` existiert und korrekt ist

### Fonts werden nicht angezeigt

- Stelle sicher, dass eine Nerd Font installiert und im Terminal aktiviert ist
- Starte das Terminal nach der Font-Installation neu
- Überprüfe die Terminal-Einstellungen

## Lizenz

Siehe [LICENSE](../LICENSE) für Details.

