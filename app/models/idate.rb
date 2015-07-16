class Idate < ActiveRecord::Base

	def self.between(start_time)
      where('starts_at > :start_date and starts_at < :ending_date')
    end

    def self.dating(date)
    	date_arrray = Idate.where('start_date <= ? AND ending_date >= ?', date,  date)
    	date_arrray
    end
end
