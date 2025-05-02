#!/bin/bash

set -e
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# call yay installer
# "$SCRIPT_DIR/setups/yay.sh"

# call vscode installer 
"$SCRIPT_DIR/setups/vscode.sh"