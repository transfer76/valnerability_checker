# Vulnerability Checker

Create a Rails application which can inform user about new rubygems vulnerabilities. Use this resource https://rubysec.com/advisories.

   * Application should check this url and scrap data every 10 minutes. If there are any new vulnerabilities added - fetch it and save to DB.
   * Display on index page and notify registered users via email etc. Integrating Slack, Telegram or any kind of messaging system would be a plus.

Requirements:

   * newest ruby version
   * newest Rails version
   * PostgreSQl
   * Sidekiq
   * rspec

## Assumptions

* For each vulnerability separate email is sent

## Limitations

* Parses only first page
* Does not parse description

