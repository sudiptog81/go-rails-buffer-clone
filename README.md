# Buffer Clone in RoR

Deployed Version: https://tweet-from-kepler-22b.herokuapp.com/

## Requirements

  - Ruby 3.0.1
  - Ruby enVironment Manager 1.29.12-next 
  - Bundler 2.2.15
  - PostgreSQL 13.2
  - Redis 6.2.3
  - Git 2.31.1

## Getting Started

Verify the development environment.

```bash
$ rvm info

ruby-3.0.1:

  system:
    ...
    architecture: "x86_64"
    ...
    
  rvm:
    ...
    version:      "1.29.12-next (master)"
    ...
    
  ruby:
    ...
    interpreter:  "ruby"
    version:      "3.0.1p64"
    platform:     "x86_64-linux"
    ...
```

Clone the repository and install dependencies.
```bash
$ git clone https://github.com/sudiptog81/go-rails-buffer-clone.git
$ cd go-rails-buffer-clone
$ bundle install
```

Change the database connection parameters in `config/database.yml` and run migrations.

```bash
$ rails db:create db:migrate
```

Create a Twitter 3-legged OAuth enabled application on the [Twitter Developer Portal](https://developer.twitter.com/en/portal/dashboard) and note down the API key and secret.

Get the SMTP credentials for the Forget Password functionality if using in production.

Populate the Rails credentials by running the following commands and entering the credentials in the given format.

```bash
$ rails credentials:edit --environment={development,production}
...
twitter:
  api_key: xxxxx
  api_secret: xxxxx
  
smtp:
  from: xxxxx@xxxxx.com
  host: xxxxx.com
  port: 587
  username: xxxxx
  password: xxxxx
...
```

Once the credentials have been added and `.key` files are present in `config/credentials`, run the application with the following commands in two different terminal windows.

```bash
$ rails s   # terminal A
$ sidekiq   # terminal B
```

## Screenshots

See [this folder](.github/).

## Background

This application was developed while as a project while learning to work with Ruby on Rails with the [Go Rails RoR](https://gorails.com/start) course by [Chris Oliver](https://github.com/excid3).

## License

The MIT Open Source License

