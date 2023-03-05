require_relative "lib/text_splitters/version"

Gem::Specification.new do |spec|
  spec.name = "text_splitters"
  spec.version = TextSplitters::VERSION
  spec.authors = ["Alex Ghiculescu"]
  spec.email = ["alex@tanda.co"]

  spec.summary = "Port of langchain's text splitters"
  spec.homepage = "https://github.com/ghiculescu/text_splitters"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6"

  spec.metadata = {
    "bug_tracker_uri" => "https://github.com/ghiculescu/text_splitters/issues",
    "changelog_uri" => "https://github.com/ghiculescu/text_splitters/releases",
    "source_code_uri" => "https://github.com/ghiculescu/text_splitters",
    "homepage_uri" => spec.homepage,
    "rubygems_mfa_required" => "true"
  }

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir.glob(%w[LICENSE.txt README.md {exe,lib}/**/*]).reject { |f| File.directory?(f) }
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
