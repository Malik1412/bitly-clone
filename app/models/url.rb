class Url < ActiveRecord::Base
	# before_create :shorten 


	def shorten
		self.short_url = SecureRandom.hex(3)
		self.save
	end
end