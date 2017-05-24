# TrelloGitBranch

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/trello_git_branch`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Install it yourself as an executable:

1. Clone the repo locally
2. `cd` into the dir and run `gem install pkg/trello_git_branch-x.x.x.gem`
3. Be happy.

(optionally)

4. Edit yout `.zshrc`/`.bashrc` etc. to alias the command to something shorter.

    `alias tgb="trello_git_branch"`

## Usage

Once installed, run `trello_git_branch` within your application dir

You must be on `master` branch for this to work. This enforces good branching practice

The first time you run the command you will be redirected to Trello's developer pages where you'll find your [DEVELOPER_PUBLIC_KEY].
Add this when prompted.

You'll be redirected once more to accept and be given your [MEMBER_TOKEN]. Again, add this whe prompted.

Once configured correctly, you'll be given a list of card titles from the 'Dev in Progress' Trello list.

HAPPY BRANCHING!

:rocket:

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/trello_git_branch.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

