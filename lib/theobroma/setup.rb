require 'theobroma/environment'
require 'theobroma/parser'
require 'theobroma/installer'

environment = Theobroma::Environment.new
version = environment.cocoapods_version

puts "Detected CocoaPods version: #{version}"
installer = Theobroma::Installer.new(version)
puts "CocoaPods Version (#{version}) installed? #{installer.installed?}" 
installer.install!

gem 'cocoapods', version

require 'cocoapods/gem_version'

