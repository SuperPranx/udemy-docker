if [ -z $1 ] || [ -z $2 ]
then
  echo "Init script takes 'name' and 'email' parameters, in that order"
  echo "Example: bash init_repo Solomon solomon@notnow.later"
  exit 1
fi
alias ll="ls -l"
echo "Going to 'home' directory"
cd /home
echo "Setting global Git config"
git config --global --unset user.name
git config --global --add user.name $1
git config --global --unset user.email
git config --global --add user.email $2
echo
git clone https://github.com/SuperPranx/udemy-docker.git
echo
cd udemy-docker
ls -l