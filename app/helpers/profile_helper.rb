module ProfileHelper
	def months
      first = date.beginning_of_month
      last = date.end_of_month
      (first..last).to_a
    end
end
