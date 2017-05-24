# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'trello_git_branch/version'

Gem::Specification.new do |spec|
  spec.name          = "trello_git_branch"
  spec.version       = TrelloGitBranch::VERSION
  spec.authors       = ["Marcus Mitchell"]
  spec.email         = ["marcusleemitchell@gmail.com"]

  spec.summary       = %q{Quickly create and checkout a git branch based on the name of the selected Trello card}
  spec.description   = %q{
    On first run you will be redirected to Trello where you'll find your [DEVELOPER_API_KEY] and [MEMBER_TOKEN].
    Enter these when prompted. You'll only need to do this once.
    Now when running `trello_git_branch` you'll be given a list of titles for cards in the 'Dev in Progess' Trello List to pick from.
  }
  spec.license       = "MIT"

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
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "term-ansicolor"
  spec.add_dependency "ruby-trello"
  spec.add_dependency "launchy"
  spec.add_dependency "json"
  spec.add_dependency "highline"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "byebug"
end
