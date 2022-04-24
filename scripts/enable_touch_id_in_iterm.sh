#!/bin/bash

cat /etc/pam.d/sudo | grep -q "^auth\s*sufficient\s*pam_tid\.so"
if [ $? -eq 0 ]; then
    exit 0
fi

printf "\033[0;92m==> %s\n\033[0m" "Enabling Touch ID in Iterm"
if [ ! -w /etc/pam.d/sudo ]; then
    printf "\033[0;92m==> %s\n\033[0m" "Requesting write perimissions for /etc/pam.d/sudo"
    sudo chmod 644 /etc/pam.d/sudo
fi

printf "\033[0;92m==> %s\n\033[0m" "Updating pam_tid.so"
sudo sed -i '' '2s/^/auth sufficient pam_tid.so\n/' /etc/pam.d/sudo
printf "\033[0;92m==> %s\n\033[0m" "Setting to readonly /etc/pam.d/sudo"
sudo chmod 444 /etc/pam.d/sudo
printf "\033[0;93m==> %s\n\033[0m" "In Iterm go to:"
printf "\033[0;93m==> %s\n\033[0m" "Prefs -> Advanced -> Allow sessions to survive logging out and back in"
printf "\033[0;93m==> %s\n\033[0m" "Set setting to No"
printf "\033[0;93m==> %s\n\033[0m" "Restart Iterm"
