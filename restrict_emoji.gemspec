# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'restrict_emoji/version'

Gem::Specification.new do |spec|
  spec.name          = "restrict_emoji"
  spec.version       = RestrictEmoji::VERSION
  spec.authors       = ["asonas"]
  spec.email         = ["hzw1258@gmail.com"]

  spec.summary       = %q{Restrict Emoji}
  spec.description   = %q{Delete emoji, Can not saved in DB due to (various) historical circumstances.}
  spec.homepage      = "https://github.com/asonas/restrict_emoji"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
