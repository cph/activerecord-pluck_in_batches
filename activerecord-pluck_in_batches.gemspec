# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "activerecord/pluck_in_batches/version"

Gem::Specification.new do |spec|
  spec.name          = "activerecord-pluck_in_batches"
  spec.version       = Activerecord::PluckInBatches::VERSION
  spec.authors       = ["Bob Lail"]
  spec.email         = ["bob.lail@cph.org"]

  spec.summary       = %q{Like find_each or find_in_batches but for pluck}
  spec.homepage      = "https://github.com/concordia-publishing-house/activerecord-pluck_in_batches"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord", ">= 4.2.7", "< 5.2.0"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
