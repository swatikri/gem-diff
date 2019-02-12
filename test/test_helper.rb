# frozen_string_literal: true
require "bundler/setup"

require "single_cov"
SingleCov.setup :minitest

require "maxitest/autorun"

require "gem/diff"
require "gem/diff/version"
require "gem/diff/command"
