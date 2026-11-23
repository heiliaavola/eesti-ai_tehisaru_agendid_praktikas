#!/usr/bin/env bash
# Paigaldab OpenCode'i kindla versiooni. Käivitub ise, kui Codespace luuakse.
# Versioon on lukus, et kõigil osalejatel oleks sama programm. Uuenda ainult pärast testimist.
set -euo pipefail

OPENCODE_VERSION="1.19.4"

curl -fsSL https://opencode.ai/install | bash -s -- --version "$OPENCODE_VERSION"

if ! grep -q '.opencode/bin' "$HOME/.bashrc"; then
  echo 'export PATH="$HOME/.opencode/bin:$PATH"' >> "$HOME/.bashrc"
fi

"$HOME/.opencode/bin/opencode" --version
echo "OpenCode on paigaldatud. Ava terminal ja kirjuta: opencode"
