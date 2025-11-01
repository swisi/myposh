# ~/.p10k.zsh — Minimal, links Py-Version kurz, rechts leer

# -------------------------
# Prompt-Elemente
# -------------------------
typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  os_icon
  context
  dir
  vcs
  pyshort        # zeigt z.B. 3.11, nur wenn ein VENV aktiv ist
)
typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()   # <— rechts NICHTS

# -------------------------
# OS-Icon (plattformunabhängig)
# -------------------------
typeset -g POWERLEVEL9K_OS_ICON_FOREGROUND=0
typeset -g POWERLEVEL9K_OS_ICON_BACKGROUND=7

# OS-spezifische Icons (optional anpassen)
# macOS - wird standardmäßig von Powerlevel10k erkannt
# Linux - wird standardmäßig von Powerlevel10k erkannt
# Für ein benutzerdefiniertes Icon:
# typeset -g POWERLEVEL9K_OS_ICON_CONTENT_EXPANSION=''

# -------------------------
# Benutzer (immer anzeigen)
# -------------------------
typeset -g POWERLEVEL9K_CONTEXT_ALWAYS_SHOW=true
typeset -g POWERLEVEL9K_CONTEXT_TEMPLATE='%n'
typeset -g POWERLEVEL9K_CONTEXT_FOREGROUND=7
typeset -g POWERLEVEL9K_CONTEXT_BACKGROUND=4

# -------------------------
# Directory
# -------------------------
typeset -g POWERLEVEL9K_DIR_FOREGROUND=7
typeset -g POWERLEVEL9K_DIR_BACKGROUND=4
typeset -g POWERLEVEL9K_DIR_HOME_SUBST=$'\uf015'   # Haus-Icon
typeset -g POWERLEVEL9K_DIR_SHORTEN_STRATEGY=truncate_to_unique
typeset -g POWERLEVEL9K_DIR_MAX_LENGTH=30

# -------------------------
# Git (vcs)
# -------------------------
typeset -g POWERLEVEL9K_VCS_SHOW_REMOTE=false
typeset -g POWERLEVEL9K_VCS_BRANCH_ICON=''
typeset -g POWERLEVEL9K_VCS_COMMIT_ICON=''
typeset -g POWERLEVEL9K_VCS_FOREGROUND=0
typeset -g POWERLEVEL9K_VCS_BACKGROUND=2

# -------------------------
# Layout / Pfeile
# -------------------------
typeset -g POWERLEVEL9K_PROMPT_ON_NEWLINE=false
typeset -g POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\uE0B0'                 # 
typeset -g POWERLEVEL9K_LEFT_PROMPT_LAST_SEGMENT_END_SYMBOL=$'\uE0B0'    # 
typeset -g POWERLEVEL9K_WHITESPACE_BETWEEN_LEFT_SEGMENTS=' '
typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_VIINS_CONTENT_EXPANSION='❯'
typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_VIINS_CONTENT_EXPANSION='❯'

# -------------------------
# (Sicherheit) Virtualenv-Einstellungen
# -------------------------
# Falls du irgendwo später versehentlich das VENV-Segment aktivierst:
typeset -g POWERLEVEL9K_VIRTUALENV_SHOW_PYTHON_VERSION=false

# -------------------------
# Custom-Segment: pyshort (links)
# Nur bei aktivem VENV; zeigt MAJOR.MINOR (z.B. 3.11).
# -------------------------
function prompt_pyshort() {
  [[ -n "$VIRTUAL_ENV" ]] || return

  local py ver
  if command -v python3 >/dev/null 2>&1; then
    py=python3
  elif command -v python >/dev/null 2>&1; then
    py=python
  else
    return
  fi

  ver="$($py -c 'import sys; print(f"{sys.version_info[0]}.{sys.version_info[1]}")' 2>/dev/null)" || return
  [[ -n "$ver" ]] || return

  # Icon anpassen/entfernen nach Geschmack (Nerd Font empfehlenswert)
  p10k segment -i '' -f 0 -b 6 -t "$ver"
}

