# Oh My Posh Konfiguration

Dieses Repository enthält meine persönlichen Oh My Posh Einstellungen für verschiedene Plattformen.

**Website:** https://ohmyposh.dev

## Inhalte

- `swisi.omp.json` - Hauptkonfigurationsdatei für Oh My Posh

## Installation

### macOS

#### Oh My Posh installieren

**Mit Homebrew:**
```bash
brew install oh-my-posh
```

**Mit Scoop (falls installiert):**
```bash
scoop install https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-windows-amd64.zip
```

#### Nerd Fonts installieren

Oh My Posh benötigt eine Nerd Font für die korrekte Darstellung der Icons.

**Mit Homebrew:**
```bash
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono-nerd-font
# oder eine andere Nerd Font deiner Wahl
```

**Manuell:**
1. Lade eine Nerd Font von https://www.nerdfonts.com herunter
2. Installiere die Font-Dateien
3. Konfiguriere dein Terminal, um die Font zu verwenden

#### Terminal konfigurieren

1. Öffne die Einstellungen deines Terminals (z.B. iTerm2, Terminal.app, Warp)
2. Wähle die installierte Nerd Font als Standard-Font aus
3. Stelle sicher, dass das Terminal die Font korrekt verwendet

### Windows

#### Oh My Posh installieren

**Mit winget:**
```cmd
winget install JanDeDobbeleer.OhMyPosh
```

**Mit Scoop:**
```powershell
scoop install oh-my-posh
```

**Mit Chocolatey:**
```powershell
choco install oh-my-posh
```

#### Nerd Fonts installieren

**Mit Administratorrechten:**
```cmd
oh-my-posh font install
```

Alternativ kannst du Nerd Fonts manuell von https://www.nerdfonts.com herunterladen und installieren.

#### Windows Terminal konfigurieren

1. Öffne die Windows Terminal Einstellungen (Standard-Shortcut: `CTRL + SHIFT + ,`)
2. Wähle dein Profil aus (z.B. PowerShell)
3. Stelle sicher, dass eine Nerd Font als Font ausgewählt ist

### Linux

#### Oh My Posh installieren

**Mit Homebrew (Linux):**
```bash
brew install oh-my-posh
```

**Manuell:**
```bash
# Lade die neueste Version herunter
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh
```

**Mit Snap:**
```bash
sudo snap install oh-my-posh --classic
```

#### Nerd Fonts installieren

**Mit Homebrew:**
```bash
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono-nerd-font
```

**Manuell:**
1. Lade eine Nerd Font von https://www.nerdfonts.com herunter
2. Installiere die Font-Dateien in `~/.fonts` oder `/usr/share/fonts`
3. Aktualisiere den Font-Cache: `fc-cache -f -v`

**Mit apt (für einige Fonts):**
```bash
sudo apt install fonts-nerd-font
```

## Setup Terminal

### PowerShell (Windows)

1. Öffne PowerShell
2. Ermittle dein Profil:
```powershell
$PROFILE
```

3. Erstelle das Profil, falls es nicht existiert:
```powershell
if (!(Test-Path -Path $PROFILE)) {
    New-Item -ItemType File -Path $PROFILE -Force
}
```

4. Öffne das Profil:
```powershell
notepad $PROFILE
```

5. Füge die folgende Zeile hinzu:
```powershell
oh-my-posh init pwsh --config https://raw.githubusercontent.com/swisi/myposh/main/oh-my-posh/swisi.omp.json | Invoke-Expression
```

**Oder mit lokalem Konfigurationsfile:**
```powershell
oh-my-posh init pwsh --config C:\Pfad\zur\swisi.omp.json | Invoke-Expression
```

6. Lade das Profil neu:
```powershell
. $PROFILE
```

### Zsh (macOS & Linux)

1. Öffne deine `.zshrc` Datei:
```bash
nano ~/.zshrc
```

2. Füge die folgende Zeile hinzu:
```bash
eval "$(oh-my-posh init zsh --config https://raw.githubusercontent.com/swisi/myposh/main/oh-my-posh/swisi.omp.json)"
```

**Oder mit lokalem Konfigurationsfile:**
```bash
eval "$(oh-my-posh init zsh --config ~/pfad/zur/swisi.omp.json)"
```

3. Lade die Konfiguration neu:
```bash
source ~/.zshrc
```

### Bash (Linux)

1. Öffne deine `.bashrc` Datei:
```bash
nano ~/.bashrc
```

2. Füge die folgende Zeile hinzu:
```bash
eval "$(oh-my-posh init bash --config https://raw.githubusercontent.com/swisi/myposh/main/oh-my-posh/swisi.omp.json)"
```

3. Lade die Konfiguration neu:
```bash
source ~/.bashrc
```

### Fish (Linux/macOS)

1. Erstelle das Init-Script:
```bash
oh-my-posh init fish --config https://raw.githubusercontent.com/swisi/myposh/main/oh-my-posh/swisi.omp.json --print > ~/.config/fish/conf.d/oh-my-posh.fish
```

2. Starte eine neue Fish-Session

## Update

### macOS/Linux

```bash
# Mit Homebrew
brew upgrade oh-my-posh

# Manuell
# Lade die neueste Version von GitHub herunter und ersetze die vorhandene Installation
```

### Windows

```cmd
winget upgrade oh-my-posh
```

```powershell
# Mit Scoop
scoop update oh-my-posh

# Mit Chocolatey
choco upgrade oh-my-posh
```

## Anpassungen

Die Konfigurationsdatei `swisi.omp.json` kann nach Belieben angepasst werden. Weitere Informationen zur Konfiguration findest du in der [Oh My Posh Dokumentation](https://ohmyposh.dev/docs/).

## Probleme beheben

### Fonts werden nicht angezeigt

- Stelle sicher, dass eine Nerd Font installiert und in deinem Terminal aktiviert ist
- Starte dein Terminal nach der Font-Installation neu
- Überprüfe, ob dein Terminal die Font unterstützt

### Oh My Posh wird nicht geladen

- Überprüfe, ob Oh My Posh korrekt installiert ist: `oh-my-posh --version`
- Stelle sicher, dass der Pfad zur Konfigurationsdatei korrekt ist
- Überprüfe die Ausgabe von `oh-my-posh init [shell] --config [path]` auf Fehler

## Lizenz

Siehe [LICENSE](../LICENSE) für Details.

