require 'yaml'

module Persey
  module Adapters
    class Yaml < Persey::Adapters::Base
      class << self
        def load(file, env)
          begin
            raw_hash = YAML.load_file(file)
            symbolize_keys(raw_hash)
          rescue
            puts "FATAL: Error while process config from file '#{file}'"
          end
        end
      end
    end
  end
end
