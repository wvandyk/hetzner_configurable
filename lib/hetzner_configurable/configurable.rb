module HetznerConfigurable
  module Configurable
    module ClassMethods
      def config
        @config or raise ArgumentError.new("no config specified")
      end

      def config=(config_contents)
        @config = config_contents
      end
    end

    def self.included(base)
      base.extend ClassMethods
    end

    def config
      @config || self.class.config
    end

    def config=(passed_in_config)
      @config = passed_in_config
    end
  end
end
