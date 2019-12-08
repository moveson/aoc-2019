require "minitest/autorun"
require_relative "../lib/fuel"

describe Fuel do
  describe ".calculate" do
    it "calculates fuel requirements for a small mass" do
      assert_equal 0, Fuel.calculate(6)
    end

    it "calculates fuel requirements for a larger mass" do
      assert_equal 1, Fuel.calculate(10)
    end

    it "calculates fuel requirements for a much larger mass" do
      assert_equal 966, Fuel.calculate(1969)
    end

    it "calculates fuel requirements for a very large mass" do
      assert_equal 50346, Fuel.calculate(100756)
    end
  end
end
