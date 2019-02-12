require 'rubygems/command_manager'
require 'gem/diff/command'

# TODO: see if we can make this not load command at all to be fast
Gem::CommandManager.instance.register_command(:diff, Gem::Diff::Command)
