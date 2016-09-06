module Theobroma
  class Parser
    def initialize(file)
      require 'yaml'
      @yaml = YAML.load(File.read(file))
    rescue Errno::ENOENT
      @yaml = {
        'COCOAPODS' => '1.0.1'
      }
    end

    def pods_version
      @yaml["COCOAPODS"]
    end
  end
end
