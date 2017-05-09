#!/bin/bash

source 'settings.sh'
source 'utils.sh'

print_heading "Node"
printf "Here are some NPM packages that might be of use to you:\n"
for package in $NPM_PACKAGES; do
    printf "  * $package\n"
done

printf "\n" # An extra line break, purely for cosmetic reasons

if ask_question "Do you want to install them?"; then
    npm install -g $NPM_PACKAGES
    print_success "NPM packages successfully installed"
else
    print_error "Got it. No NPM packages for you."
fi
