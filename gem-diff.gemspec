# frozen_string_literal: true
name = "gem-diff"
$LOAD_PATH << File.expand_path("lib", __dir__)
require "#{name.tr("-", "/")}/version"

Gem::Specification.new name, Gem::Diff::VERSION do |s|
  s.summary = "Show diff between 2 gem versions"
  s.authors = ["Swati Krishnan"]
  s.email = "swatikrishnan4@gmail.com"
  s.homepage = "https://github.com/swatikri/#{name}"
  s.files = `git ls-files lib/ bin/ MIT-LICENSE`.split("\n")
  s.license = "MIT"
  s.required_ruby_version = ">= 2.3.0"
end
