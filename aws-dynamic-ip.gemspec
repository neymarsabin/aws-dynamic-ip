lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "amazon_web/dynamic/ip/version"

Gem::Specification.new do |spec|
  spec.name          = "aws-dynamic-ip"
  spec.version       = AmazonWeb::Dynamic::Ip::VERSION
  spec.authors       = ["Sabin Nepal"]
  spec.email         = ["reddevil.sabin@gmail.com"]

  spec.summary       = %q{ Fetch IP of ec2 instances based on tags }
  spec.homepage      = "https://github.com/neymarsabin/aws-dynamic-ip"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = ""

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/neymarsabin/aws-dynamic-ip"
  spec.metadata["changelog_uri"] = "https://github.com/neymarsabin/aws-dynamic-ip/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "aws-sdk-ec2", ["~> 1.192.0"]
end
