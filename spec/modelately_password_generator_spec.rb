# frozen_string_literal: true

RSpec.describe ModelatelyPasswordGenerator do
  it "has a version number" do
    expect(ModelatelyPasswordGenerator::VERSION).not_to be nil
  end

  it "num" do
    actual = ModelatelyPasswordGenerator::ModelatelyPasswordGenerator.new(num: 1).generate
    expect(actual.count).to eq(1)
  end

  it "length" do
    actual = ModelatelyPasswordGenerator::ModelatelyPasswordGenerator.new(num: 1, length: 15).generate
    expect(actual.first.length).to eq(15)
  end

  it "additional" do 
    actual = ModelatelyPasswordGenerator::ModelatelyPasswordGenerator.new(num: 1, additional: "@").generate
    expect(actual.first).to include("@")
    expect(actual.first).not_to include("-")
    expect(actual.first).not_to include("_")
  end
end
