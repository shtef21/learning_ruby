
### Install Ruby
sudo apt update
sudo apt install build-essential rustc libssl-dev libyaml-dev zlib1g-dev libgmp-dev

## For some reason Mise version manager is needed
curl https://mise.run | sh
# Add it to ~/.bashrc
echo 'eval "$(~/.local/bin/mise activate)"' >> ~/.bashrc
source ~/.bashrc

## Install Ruby globally with Mise
mise use -g ruby@3



### Install Rails
gem install rails

### Install Gems (within proj directory)
#bundle install

### Start rails app (within proj directory) using binstubs
### binstubs - Binstubs are wrapper scripts around executables
###   (sometimes referred to as "binaries", although they
###   don't have to be compiled) whose purpose is to prepare
###   the environment before dispatching the call to the
###   original executable.
#bin/rails server

### To start interactive ruby, write this:
# irb
