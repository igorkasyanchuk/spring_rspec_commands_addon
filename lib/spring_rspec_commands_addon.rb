require "spring_rspec_commands_addon/version"

module SpringRspecCommandsAddon

  module Overrides
    def colorized_rerun_commands(colorizer=::RSpec::Core::Formatters::ConsoleCodes)
      "\nFailed examples:\n\n" +
      failed_examples.map do |example|
        colorizer.wrap("#{rspec_shell_command} #{rerun_argument_for(example)}", RSpec.configuration.failure_color) + " " +
        colorizer.wrap("# #{example.full_description}",   RSpec.configuration.detail_color)
      end.join("\n")
    end

    private

    def rspec_shell_command
      @rspec_shell_command ||= begin
        if spring_rspec?
          'bin/rspec'
        else
          'rspec'
        end
      end
    end

    def spring_rspec?
      lockfile     = Bundler::LockfileParser.new(Bundler.default_lockfile.read)
      spring       = lockfile.specs.detect { |spec| spec.name == "spring" }
      spring_rspec = lockfile.specs.detect { |spec| spec.name == "spring-commands-rspec" }
      spring.present? && spring_rspec.present?
    end
  end

end


if defined?(RSpec)
  RSpec::Core::Notifications::SummaryNotification.send :prepend, SpringRspecCommandsAddon::Overrides
end