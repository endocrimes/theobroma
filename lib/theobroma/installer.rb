require 'rubygems'

module Theobroma
  class Installer
    def initialize(version)
      @version = version
    end

    def install!
      require 'bundler/inline'
      gemfile(true) do
        source 'https://rubygems.org'
        gem 'cocoapods', @version
      end
    end
  end
end
