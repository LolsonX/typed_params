require "spec_helper"

RSpec.describe TypedParams::Params do
  let(:params) { ActionController::Parameters.new(params_hash) }
  let(:params_hash) { { key: "value" } }

  describe "#[]" do
    it "returns the value for the given key" do
      expect(params[:key]).to eq("value")
    end

    it "returns nil if the key is not present" do
      expect(params[:missing_key]).to be_nil
    end
  end
end
