require 'theobroma/environment'
require 'theobroma/parser'
require 'theobroma/installer'

environment = Theobroma::Environment.new
version = environment.cocoapods_version

puts "Detected CocoaPods version: #{version}"
installer = Theobroma::Installer.new(version)
installer.install!

puts "Using CocoaPods Version: #{Pod::VERSION}"
