# frozen_string_literal: true

RSpec.describe Openapi::Blocks do
  it "has a version number" do
    expect(Openapi::Blocks::VERSION).not_to be nil
  end

  context "openapi_root" do
    it "is required" do
      expect {
        Openapi::Blocks.openapi([])
      }.to raise_error Openapi::Blocks::DeclarationError, "openapi_root must be declared"
    end
  end
end
