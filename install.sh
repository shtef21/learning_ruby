
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
