# ruby_awe
Audio Web Editor written using Ruby on Rails


## Desc
This repo is used as a demo project for learning Ruby and Ruby on Rails.

And also because the idea is cool... :)

Ruby version: 3.2.1


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


## TODO
- [x] Try to run Dockerfile
- [ ] Uncomment Gemfile in Dockerfile and use it



## Notes

Tutorial used in /learning-ruby - [Tutorial](https://www.ruby-lang.org/en/documentation/quickstart/)
