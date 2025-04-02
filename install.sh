
### Install Ruby
sudo apt-get install build-essential rustc libssl-dev libyaml-dev zlib1g-dev libgmp-dev

## For some reason Mise version manager is needed
curl https://mise.run | sh
eval "$(~/.local/bin/mise activate bash)"
# Add it to ~/.bashrc
#eval "$(~/.local/bin/mise activate bash)" >> ~/.bashrc
#source ~/.bashrc

## Install Ruby globally with Mise
mise use -g ruby@3



### Install Rails
gem install rails
