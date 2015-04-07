
echo "Nom de usuari: "
read usuari

sed -i "s|/home/.*$|/home/$usuari/.oh-my-zsh|g" zshrc

