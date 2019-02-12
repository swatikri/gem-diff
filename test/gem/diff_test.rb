# frozen_string_literal: true
require_relative "../test_helper"

SingleCov.covered!

describe Gem::Diff do
  it "has a VERSION" do
    Gem::Diff::VERSION.must_match /^[\.\da-z]+$/
  end
end
