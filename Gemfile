# frozen_string_literal: true

source "https://rubygems.org"

# Specify your gem's dependencies in typed_params.gemspec
gemspec

gem "rake"

gem "rspec"

gem "rubocop"

group :development do
  gem "rubocop-rails-omakase"

  platforms :ruby do # C Ruby (MRI), Rubinius or TruffleRuby, but NOT Windows
    gem "tapioca", require: false
  end
end
