require "minitest/autorun"
require_relative "../lib/intcode"

describe Intcode do
  describe ".execute" do
    it "executes a simple program" do
      assert_equal [2, 0, 0, 0, 99], Intcode.execute([1, 0, 0, 0, 99])
    end

    it "executes a second simple program" do
      assert_equal [2, 3, 0, 6, 99], Intcode.execute([2, 3, 0, 3, 99])
    end

    it "executes a third simple program" do
      assert_equal [2, 4, 4, 5, 99, 9801], Intcode.execute([2, 4, 4, 5, 99, 0])
    end

    it "executes a fourth simple program" do
      assert_equal [30, 1, 1, 4, 2, 5, 6, 0, 99], Intcode.execute([1, 1, 1, 4, 99, 5, 6, 0, 99])
    end
  end
end
