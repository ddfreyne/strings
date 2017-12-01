require "bundler/setup"
require "strings"

module Helpers
  def unindent(text)
    text.gsub(/^[ \t]*/, '').chomp
  end
end

RSpec.configure do |config|
  config.include(Helpers)

  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
