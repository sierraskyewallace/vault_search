lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative 'lib/vault_search/version'

Gem::Specification.new do |spec|
  spec.name          = "vault_search"
  spec.version       = VaultSearch::VERSION
  spec.authors       = ["'Sierra Wallace'"]
  spec.email         = ["'sskwallace@gmail.com'"]

  spec.summary       = %q{todo}
   spec.homepage      = "https://github.com/sierraskyewallace/vault_search"
   spec.license       = "MIT"

   # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
   # delete this section to allow pushing this gem to any host.
   if spec.respond_to?(:metadata)
     spec.metadata['allowed_push_host'] = "https://github.com/sierraskyewallace/vault_search"
   else
     raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
   end

   spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
   spec.bindir        = "exe"
   spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
   spec.require_paths = ["lib"]

 spec.add_development_dependency "bundler", "~> 2.1", ">= 2.1.4"
 spec.add_development_dependency "rake", "~> 10.0"
 spec.add_development_dependency "rspec"
 spec.add_development_dependency "pry"
 spec.add_development_dependency "open-uri"

 spec.add_dependency "nokogiri"
end
