module TypedParams
  RSpec.describe Config do
    describe "#[]" do
      it "raises an error if the key is not a valid option" do
        expect { subject[:invalid_key] }.to raise_error(ArgumentError)
      end

      it "returns the value for the given key" do
        expect(subject[:type_mapping]).to eq(TypedParams::Config::DEFAULT_CONFIG[:type_mapping])
      end
    end

    describe "#[]=" do
      it "raises an error if the key is not a valid option" do
        expect { subject[:invalid_key] = :value }.to raise_error(ArgumentError)
      end

      it "sets the value for the given key" do
        subject[:type_mapping] = :value
        expect(subject[:type_mapping]).to eq(:value)
      end
    end
  end
end
