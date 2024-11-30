# typed: true

module TypedParams
  class ParamsValidator
    def self.validate!(options)
      raise ArgumentError, "options must be a hash" unless options.is_a?(Hash)
      options.each do |option_key, option_value|
        validate_option!(option_key, option_value)
      end
    end

    def self.validate_option!(option_key, option_value)
      raise ArgumentError, "#{option_key} must be a symbol" unless option_key.is_a?(Symbol)
      raise ArgumentError, "#{option_value} must be an Array" unless option_value.is_a?(Array)
    end
  end
end
