require "theobroma/version"

module Theobroma
  require 'theobroma/environment'
  require 'theobroma/installer'
  require 'theobroma/parser'

  def self.setup
    load File.expand_path('../theobroma/setup.rb', __FILE__)
  end

  def self.cocoapods_version
    defined?(CocoaPods::VERSION) && CocoaPods::VERSION
  end
end
