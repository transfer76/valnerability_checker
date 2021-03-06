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

### Description

Task is iplemented on **Ruby 2.5.3**

Framework: **Ruby on Rails 5.2.3**

Language: **English**

Database: **PostgreSQL**

Backend adapter: **Sidekiq** using **Whenever**

### To Start

1. Clone this repository
2. Install all necessary gems
```
$ Bundle
```
3. Create database and migraitions
```
$ bundle exec rails db:create
$ bundle exec rails db:migrate
```
4. To get Sidekiq browser console
  * Start rails server
  ```
  $ rails s
  ```
  * Input in browser
  ```
  lockalhost:3000/sidekiq
  ```
5. To start shedule
  * Start rails console
  ```
  $ rails c
  ```
  * Input parametr
  ```
  => VulnerabilityWorker.perform_async
  ```
6. To start Sidekiq input in main terminal app direcrory
```
$ bundle exec sidekiq
```