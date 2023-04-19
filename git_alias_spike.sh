#!/bin/bash

# Define git alias
alias_name="c"
alias_command='!f() { read -p "Enter card number: " card_number; read -p "Enter pair: " pair; read -p "Enter commit message: " commit_message; commit_msg="$card_number | $pair | $commit_message"; git commit -m "$commit_msg"; }; f'

# Add alias to global git configuration file
git config --global alias.$alias_name "$alias_command"

echo "Git alias for 'git commit' has been added successfully! Now enjoy your 'git c'!"
