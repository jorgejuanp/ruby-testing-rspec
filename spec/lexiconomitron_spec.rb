require_relative "../lexiconomitron"
require "spec_helper"

describe Lexiconomitron do
  before :each do
    @lexi = Lexiconomitron.new
  end

  describe "#eat_t" do
    it "removes every letter t from the input" do
      expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
    end
  end

  describe "#shazam" do
    it "returns the first and last words in an array, reversed" do
      expect(@lexi.shazam(["This", "is", "a", "boring", "test"])).to eq(["sih", "se"])
    end
  end

  describe "#oompa_loompa" do
    it "returns an array, but only words with 3 characters or less, in the same order" do
      expect(@lexi.oompa_loompa( ["if", "you", "wanna", "be", "my", "lover"])).to eq(["if", "you", "be", "my"])
    end
  end
end
