# frozen_string_literal: true
require_relative "test_helper"

SingleCov.covered!

describe GemDiff do
  it "has a VERSION" do
    GemDiff::VERSION.must_match /^[\.\da-z]+$/
  end
end
