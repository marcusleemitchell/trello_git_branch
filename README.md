# TrelloGitBranch

This is a small executable to standardize the naming of working branches within an application.

The branch name is taken from the Trello card title including the card id

.eg

`101-this-is-where-it-all-ends-up`

## Installation

Install it yourself as an executable:

1. Clone the repo locally
2. `cd` into the dir and run `rake build trello_git_branch.gemspec`
3. Run `gem install pkg/trello_git_branch-x.x.x.gem` (Get the x.x.x from the output of the previous command
4. Be happy.

(optional)

4. Edit yout `.zshrc`/`.bashrc` etc. to alias the command to something shorter.

    `alias tgb="trello_git_branch"`
    `alias tgc="trello_git_commit"`

## Usage

Once installed, run `trello_git_branch` within your application dir

You must be on `master` branch for this to work. This enforces good branching practice

The first time you run the command you will be redirected to Trello's developer pages where you'll find your [DEVELOPER_PUBLIC_KEY].
Add this when prompted.

You'll be redirected once more to accept and be given your [MEMBER_TOKEN]. Again, add this whe prompted.

Once configured correctly, you'll be given a list of card titles from the 'Dev in Progress' Trello list.

HAPPY BRANCHING!

:rocket:

`trello_git_commit` can be used to construct commit messages prefixed with the card number from the branch.

This makes it much easier to see related commits when viewing `git log`

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Coming soon!

I want to also prompt for the user's initials and add them to the branch name

.eg

`101-MM-this-is-where-it-all-ends-up`

I want to create another executable to standarize the commit messages with the same card id prefix

.eg

`trello_git_commit [ENTER]`
`> this is a commit message`

will become

`(101) this is a commit message`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/trello_git_branch.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

