# class Short < ActiveRecord::Base
# end

# class Short true, :format => { :with => %r{^http://}, :message => "Only HTTP links allowed!" }
class Short < ActiveRecord::Base
	
  # 	validates :long,
		# 		:presence => true,
		# 		:format => {
		# 				:with => %r{^http://},
		# 				:message => "Only HTTP links allowed!"
		# }

	def to_param #generates a "slug"
		# if self.desc.nil? 
			b36_id 
		# else 
		# 	"#{b36_id}/#{self.desc}" 
		# end
	end

	def b36_id 
		self.id.to_i.to_s(36) 
	end 
end