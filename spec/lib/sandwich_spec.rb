require 'spec_helper'
# A sandwhich should take in a bread and a meat.
# I should have the ability to cut a sandwich in half.
# I should have the ability to eat the sandwich.

RSpec.describe Sandwich do
  let!(:sandwich) { Sandwich.new("American", "Turkey") }
  describe "#new" do
    it "makes a new sandwich" do
      expect(sandwich).to be_a(Sandwich)
    end
  end

  describe "#cheese" do
    it "can see the cheese" do
      expect(sandwich.cheese).to eq "American"
    end
  end

  describe "#meat" do
    it "can see the meat" do
      expect(sandwich.meat).to eq "Turkey"
    end
  end

  describe "#cut" do
    it "cuts the sandwich in half" do
      sandwich.cut
      expect(sandwich.uncut).to eq false
    end
  end

  describe "#eat" do
    context "not yet eaten" do
      it "takes a bit of the sandwich" do
        sandwich.eat
        expect(sandwich.size).to eq 4

        sandwich.eat
        expect(sandwich.size).to eq 3
      end
    end

    context "eaten completely" do
      it "tries to take a bite of a nonexistant sandwich" do
        sandwich.size = 0
        expect(sandwich.eat).to eq("Sorry, all gone!")
      end
    end
  end
end
