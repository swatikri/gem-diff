require 'rubygems/command'

module Gem
  module Diff
    class Command < ::Gem::Command
      def self.invoke_with_build_args(argv, _build_argv)
        gem_name = argv[0]
        old_version = argv[1]
        new_verison = argv[2]
        old_gem = Gem::Specification.find_by_name gem_name, old_version
        new_gem = Gem::Specification.find_by_name gem_name, new_version
        exec 'git', 'diff', old_gem.gem_dir, new_gem.gem_dir
      end

      def self.summary
        'Show diff between 2 gem versions'
      end
    end
  end
end
