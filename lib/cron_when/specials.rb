module CronWhen
  class Specials
    def initialize(crontab)
      @special = crontab.gsub(/^@/, '')
    end

    def calculate
      self.send(@special)
    end

    def reboot
      "Next time you reboot ;)"
    end

    def yearly
      Time.now.next_year.beginning_of_year
    end
    alias_method :annually, :yearly

    def monthly
      Time.now.next_month.beginning_of_month
    end

    def weekly
      Time.now.next_week.beginning_of_week
    end

    def daily
      Time.now.tomorrow.beginning_of_day
    end
    alias_method :midnight, :daily

    def hourly
      Time.now.advance(:hours => 1).change(:min => 0, :sec => 0, :usec => 0)
    end
  end
end
