# Source:  https://hub.docker.com/_/ruby

# For now not tested
# For now ruby CLI is used

FROM ruby:3.3

WORKDIR /app

COPY . .

# Make sure the script is executable
RUN chmod +x ./learning-ruby/main_1.rb

# Run the Ruby script
CMD ["ruby", "./learning-ruby/main_1.rb"]
