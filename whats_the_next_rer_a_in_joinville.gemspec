# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "whats_the_next_rer_a_in_joinville/version"

Gem::Specification.new do |spec|
  spec.name          = "whats_the_next_rer_a_in_joinville"
  spec.version       = WhatsTheNextRerAInJoinville::VERSION
  spec.authors       = ["Nicolas Sitter"]
  spec.email         = ["nicolas.sitternolleau@gmail.com"]

  spec.summary       = %q{Know when is the next RER A to Paris from Joinville-Le-Pont}
  spec.description   = %q{Know when is the next RER A to Paris from Joinville-Le-Pont in order to leave work at the good time!}
  spec.homepage      = "https://github.com/Nicositter88/whats_the_next_rer_a_in_joinville"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
