module Theobroma
  class Environment
    def lockfile
      File.expand_path './Podfile.lock'
    end

    def lockfile_version
      Theobroma::Parser.new(lockfile).pods_version
    end

    def cocoapods_version
      @cocoapods_version ||= lockfile_version || "#{Gem::Requirement.default}.a"
    end
  end
end
