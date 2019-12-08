require "minitest/autorun"
require_relative "../fuel"

describe Fuel do
  describe ".calculate" do
    it "calculates fuel requirements for a small mass" do
      assert_equal Fuel.calculate(6), 0
    end

    it "calculates fuel requirements for a larger mass" do
      assert_equal Fuel.calculate(10), 1
    end

    it "calculates fuel requirements for a much larger mass" do
      assert_equal Fuel.calculate(1969), 966
    end

    it "calculates fuel requirements for a very large mass" do
      assert_equal Fuel.calculate(100756), 50346
    end
  end
end
