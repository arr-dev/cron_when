module CronWhen
  class Parser
    # http://www.manpagez.com/man/5/crontab/
    # http://guides.rubygems.org/make-your-own-gem/
    # http://railscasts.com/episodes/135-making-a-gem
    # TODO bin http://ruby-doc.org/stdlib-1.9.3/libdoc/optparse/rdoc/OptionParser.html
    # TODO lib parser
    # TODO tests
    def initialize(crontab, options)
      @options = options
      parse(crontab)
    end

    def schedule
      @schedule
    end

    def parse(crontab)
      if SPECIALS.include?(crontab)
        @schedule = Specials.new(crontab).calculate
      else
        raise WrongCrontabFormatException, "Wrong crontab format: #{crontab}" unless crontab.match(REGEX)
        fields = crontab.split(' ')
        @minutes = fields[MINUTE]
        @hours = fields[HOUR]
        @days_of_month = fields[DAY_OF_MONTH]
        @months = fields[MONTH]
        @days_of_week = fields[DAY_OF_WEEK]
      end
    end

    MINUTE = 0
    HOUR = 1
    DAY_OF_MONTH = 2
    MONTH = 3
    DAY_OF_WEEK = 4

    SPECIALS = %w(@reboot @yearly @annually @monthly @weekly @daily @midnight @hourly)

    REGEX = /\A[\*\/\-0-9]+\s+[\*\/\-0-9]+\s+[\*\/\-0-9]+\s+[\*\/\-0-9a-z]+\s+[\*\/\-0-9a-z]+.*\z/
  end

  class WrongCrontabFormatException < Exception; end
end
