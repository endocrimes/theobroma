require 'rubygems'

module Theobroma
  class Installer
    def initialize(version)
      @version = version
    end

    def installed?
      if Gem::Specification.respond_to?(:find_by_name)
        !Gem::Specification.find_by_name('cocoapods', @version).nil?
      else
        requirement = Gem::Requirement.new(@version)
        Gem.source_index.gems.values.any? do |s|
          s.name == 'cocoapods' && requirement.satisfied_by?(s.version)
        end
      end
    rescue LoadError
      false
    end

    def install!
      return if installed?
      require 'rubygems/dependency_installer'
      installer = Gem::DependencyInstaller.new
      installer.install('cocoapods', @version)
      installer.installed_gems
    end
  end
end
