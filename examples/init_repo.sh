alias ll="ls -l"
echo "Going to 'home' directory"
cd /home
echo "Setting global Git config"
git config --global --unset user.email "email"
git config --global --add user.email "email"
git config --global --unset user.name "name"
git config --global --add user.name "name"
echo
git clone https://github.com/SuperPranx/udemy-docker.git
echo
cd udemy-docker
ls -l