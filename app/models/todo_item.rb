class TodoItem < ActiveRecord::Base
	def self.Completed
		@count=0
		TodoItem.all.each {|i| 
			if i.completed == true
				@count+=1
			end
		}
		return @count
	end
end
