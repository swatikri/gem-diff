require 'rubygems/command'

module Gem
  module Diff
    class Command < ::Gem::Command
      def self.invoke_with_build_args(a, b)
        puts "A #{a} #{b}"
      end

      def self.summary
        'Show diff between 2 gem versions'
      end
    end
  end
end
