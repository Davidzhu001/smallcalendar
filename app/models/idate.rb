class Idate < ActiveRecord::Base
	belongs_to :user

	def self.between(start_time)
      where('starts_at > :start_date and starts_at < :ending_date')
    end
    def self.months(date=Date.today)
    	date_arrray = Idate.where('start_date <= ? OR ending_date >= ?', date,  date)
    	date_arrray.sort_by &:start_date
    end
    def self.dating(date)
    	date_arrray = Idate.where('start_date <= ? AND ending_date >= ?', date,  date)
        date_arrray
    end
end
