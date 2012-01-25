class CronWhen

  # http://www.manpagez.com/man/5/crontab/
  # http://guides.rubygems.org/make-your-own-gem/
  # http://railscasts.com/episodes/135-making-a-gem
  # TODO bin http://ruby-doc.org/stdlib-1.9.3/libdoc/optparse/rdoc/OptionParser.html
  # TODO lib parser
  # TODO tests
  def initialize(crontab)
    @source = crontab
    parts = crontab.split(' ')
    @minutes = parts.delete_at(MINUTE)
    @hours = parts.delete_at(HOUR)
    @days_of_month = parts.delete_at(DAY_OF_MONTH)
    @months = parts.delete_at(MONTH)
    @days_of_week = parts.delete_at(DAY_OF_WEEK)
  end

  def schedule
    puts @source
  end

  MINUTE = 0
  HOUR = 1
  DAY_OF_MONTH = 2
  MONTH = 3
  DAY_OF_WEEK = 4
  
end
