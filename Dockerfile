# Source:  https://hub.docker.com/_/ruby

# For now not tested
# For now ruby CLI is used

FROM ruby:3.3

WORKDIR /app

# # throw errors if Gemfile has been modified since Gemfile.lock
# RUN bundle config --global frozen 1
#
# COPY Gemfile Gemfile.lock ./
# RUN bundle install

COPY . .

# Make sure the script is executable
RUN chmod +x ./learning-ruby/main.rb

# Run the Ruby script
CMD ["ruby", "./learning-ruby/main.rb"]
