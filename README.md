# ruby_awe
Learning Ruby and Ruby on Rails


## Desc
This repo is used as a demo projects repo for learning Ruby and Ruby on Rails.

Ruby version: 3.4.2

Rails version: 8.0.2


## How-tos

#### Run using CLI
```sh
ruby main.rb
```

#### Run using Dockerfile
```sh
# Build the image (add -q before -t for quiet build)
docker build -t ruby-awe .
# Run the image (add --rm to exit after stop)
docker run -it ruby-awe
```

#### Ruby stuff
```sh
# Install Ruby Gems
# Install rails
gem install --user-install rails
```



## TODO
- [x] Try to run Dockerfile
- [ ] Uncomment Gemfile in Dockerfile and use it



## Notes

Tutorial used in /learning-ruby - [Tutorial](https://www.ruby-lang.org/en/documentation/quickstart/)
