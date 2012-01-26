module CronWhen
  class Specials
    def initialize(crontab)
      @special = crontab.gsub(/^@/, '')
    end

    def calculate
      self.send(@special)
    end

    def reboot
      "Next time you reboot it ;)"
    end

    def yearly
      'next year'
    end
    alias_method :annually, :yearly

    def monthly
      'next month'
    end

    def weekly
      'next week'
    end

    def daily
      'tommorow'
    end

    def midnight
      'witch hour'
    end

    def hourly
      
    end
  end
end
