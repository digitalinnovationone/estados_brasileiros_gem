# frozen_string_literal: true

require_relative "lib/estados_brasileiros_active_record/version"

Gem::Specification.new do |spec|
  spec.name = "estados_brasileiros_active_record"
  spec.version = EstadosBrasileirosActiveRecord::VERSION
  spec.authors = ["Danilo Aparecido dos Santos"]
  spec.email = ["didox_59@yahoo.com.br"]

  spec.summary = "Estados Brasileiros no active record"
  spec.description = "Cria um model Estado.rb e faz a importação dos estados brasileiros"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"
  spec.metadata["source_code_uri"] = "https://github.com/digitalinnovationone/estados_brasileiros_gem"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
