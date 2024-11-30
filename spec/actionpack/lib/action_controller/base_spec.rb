require "spec_helper"

RSpec.describe ActionController::Base do
  subject(:controller) { described_class.new }

  describe "#typed_params" do
    it "has #typed_params method" do
      expect(controller).to respond_to(:typed_params)
    end
  end
end
