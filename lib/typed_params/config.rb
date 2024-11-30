# typed: true

module TypedParams
  class Config
    VALIID_OPTIONS = [ :type_mapping ]
    DEFAULT_CONFIG = {}

    def initialize
      @config = DEFAULT_CONFIG
    end

    def [](key)
      raise ArgumentError, "#{key} is not a valid option" unless VALID_OPTIONS.include?(key)
      @config[key]
    end

    def []=(key, value)
      raise ArgumentError, "#{key} is not a valid option" unless VALID_OPTIONS.include?(key)
      @config[key] = value
    end
  end

  @@config = Config.new

  def self.configure
    yield @@config
  end
end
