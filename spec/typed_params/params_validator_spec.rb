require "spec_helper"

RSpec.describe TypedParams::ParamsValidator do
  describe ".validate!" do
    it "raises an error if options is not a hash" do
      expect { described_class.validate!([]) }.to raise_error(ArgumentError)
    end

    it "raises an error if options is an empty hash" do
      expect { described_class.validate!({}) }.to raise_error(ArgumentError)
    end

    it "raises an error if option_key is not a symbol" do
      expect { described_class.validate!({ 1 => [] }) }.to raise_error(ArgumentError)
    end

    it "raises an error if option_value is not an array" do
      expect { described_class.validate!({ key: 1 }) }.to raise_error(ArgumentError)
    end
  end
end
