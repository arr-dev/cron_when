CronWhen is gem for retrieving execution time for cron job from crontab string.

### Installation

```sh
$ gem install cron_when
```

Or with Bundler in your Gemfile.

```ruby
gem 'cron_when', :require => false
```


### Getting started

```sh
$ cron_when @hourly
# => 2012-01-27 00:00:00 +0100
```

Format support is taken from [Debian crontab(5) man page](http://manpages.debian.net/cgi-bin/man.cgi?query=crontab&sektion=5&apropos=0&manpath= "crontab man page")