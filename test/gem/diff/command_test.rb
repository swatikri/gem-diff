# frozen_string_literal: true
require_relative "../../test_helper"

SingleCov.covered!

# exec would kill our testing, so let's just do system
Gem::Diff::Command.class_eval do
  def exec(*args)
    system *args
  end
end

describe Gem::Diff::Command do


  def capture_stdout
    old = $stdout
    $stdout = StringIO.new
    yield
    $stdout.string
  ensure
    $stdout = old
  end


  describe ".invoke_with_build_args" do
    it "shows diff" do
      capture_stdout do
        Gem::Diff::Command.invoke_with_build_args(["rack", "2.0.5", "2.0.6"], []).must_equal true
      end.must_equal "XXX"
    end
  end

  describe ".summary" do
    it "describes the command" do
      Gem::Diff::Command.summary.must_include "diff"
    end
  end
end

