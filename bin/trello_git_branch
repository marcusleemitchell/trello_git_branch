require "trello_git_branch/version"

module TrelloGitBranch

  unless `git rev-parse --abbrev-ref HEAD`.chomp == 'master'
    puts Term::ANSIColor.red("Please only run this when on `master` branch...")
    exit 1
  end

  class TrelloGitBranchConfig

    @cli = HighLine.new

    def self.get_developer_public_key
      @developer_public_key ||= `git config trello.developer_public_key`.strip
      if @developer_public_key.empty?
        puts Term::ANSIColor.yellow("Copy your Developer Public Key from the page that is about to open into the following prompt...")
        sleep(2)
        Trello.open_public_key_url
        public_key = @cli.ask "Developer Public Key: "
        @developer_public_key = public_key
        `git config --global trello.developer_public_key #{public_key}`
      end
    end

    def self.get_member_token
      @member_token ||= `git config trello.member_token`.strip
      if @member_token.empty?
        puts Term::ANSIColor.green("Getting your member token...")
        puts Term::ANSIColor.yellow("Click 'Allow' and copy the resulting token into the following prompt...")
        sleep(2)
        Trello.open_authorization_url key: @developer_api_token
        member_token = @cli.ask "Member Token: "
        @member_token = member_token
        `git config --global trello.member_token #{member_token}`
      end
    end

  end

  TrelloGitBranchConfig.get_developer_public_key
  TrelloGitBranchConfig.get_member_token

  if @developer_public_key.present? && @member_token.present?
    Trello.configure do |configuration|
      configuration.developer_public_key = @developer_public_key
      configuration.member_token = @member_token
    end
  end

  trello_list = Trello::List.find('579907267daa16740c633cbc')

  @cli.choose do |card_menu|
    card_menu.prompt = Term::ANSIColor.green "Please select from #{trello_list.name} cards:"
    card_menu.choices(*(trello_list.cards.map{ |card| card.url.split("/").last.to_sym })) do |selected_card_name|
      `git checkout -b #{selected_card_name}`
    end
  end

end
