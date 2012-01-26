module CronWhen
  class Parser
    # http://www.manpagez.com/man/5/crontab/
    # http://guides.rubygems.org/make-your-own-gem/
    # http://railscasts.com/episodes/135-making-a-gem
    # TODO bin http://ruby-doc.org/stdlib-1.9.3/libdoc/optparse/rdoc/OptionParser.html
    # TODO lib parser
    # TODO tests
    def initialize(crontab, options)
      @source = crontab
      @options = options
      parts = crontab.split(' ')
      @minutes = parts[MINUTE]
      @hours = parts[HOUR]
      @days_of_month = parts[DAY_OF_MONTH]
      @months = parts[MONTH]
      @days_of_week = parts[DAY_OF_WEEK]
    end

    def schedule
      puts @source.inspect
      puts @minutes + "\n"
      puts @hours + "\n"
      puts @days_of_month + "\n"
      puts @months + "\n"
      puts @days_of_week + "\n"
    end

    MINUTE = 0
    HOUR = 1
    DAY_OF_MONTH = 2
    MONTH = 3
    DAY_OF_WEEK = 4

    PREDEFINED = %w(@reboot @yearly @annually @monthly @weekly @daily @midnight @hourly)
  end
end
