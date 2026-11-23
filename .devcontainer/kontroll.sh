#!/usr/bin/env bash
# Kontrollib, kas keskkond on töökorras. Käivita: bash .devcontainer/kontroll.sh
# Koolitajale ja abilistele: käivita ka nädal enne töötuba, sest tasuta mudelite valik muutub.
set -uo pipefail
export PATH="$HOME/.opencode/bin:$PATH"
cd "$(dirname "$0")/.."

ok() { echo "  OK    $1"; }
viga() { echo "  VIGA  $1"; VEAD=$((VEAD + 1)); }
VEAD=0

echo "Keskkonna kontroll"

if command -v opencode >/dev/null 2>&1; then
  ok "OpenCode $(opencode --version)"
else
  viga "OpenCode puudub. Käivita: bash .devcontainer/setup.sh"
fi

MUDEL=$(python3 -c "import json; print(json.load(open('opencode.json'))['model'])" 2>/dev/null)
if [ -n "$MUDEL" ]; then ok "Vaikimisi mudel: $MUDEL"; else viga "opencode.json ei määra mudelit"; fi

if opencode models opencode 2>/dev/null | grep -qx "$MUDEL"; then
  ok "Mudel on tasuta mudelite nimekirjas"
else
  viga "Mudelit $MUDEL pole enam saadaval. Vali uus: opencode models opencode"
fi

VASTUS=$(opencode run "Vasta ainult ühe sõnaga: valmis" 2>&1 | tail -n 3)
if echo "$VASTUS" | grep -qi "valmis"; then
  ok "Mudel vastab"
else
  viga "Mudel ei vastanud. Proovi uuesti või vali OpenCode'is käsuga /models teine tasuta mudel."
fi

if [ "$VEAD" -eq 0 ]; then echo "Kõik korras."; else echo "Vigu: $VEAD"; fi
