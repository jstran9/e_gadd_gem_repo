
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "e_gadd_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "e_gadd_view_tool"
  spec.version       = EGaddViewTool::VERSION
  spec.authors       = ["ttran9"]
  spec.email         = ["toddtran9@gmail.com"]

  spec.summary       = %q{Various view specific methods for the DevcampPortfolio app from Jordan Hudgen's Dissecting ROR 5 course.}
  spec.description   = %q{Provides generated HTML data for Rails applications.}
  spec.homepage      = "https://github.com/ttran9/e_gadd_gem_repo"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
