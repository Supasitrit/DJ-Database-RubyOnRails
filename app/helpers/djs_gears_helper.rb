module DjsGearsHelper
	def	gears_options
		s=''
		Gear.all.each do |gear|
			s << "<option value='#{gear.id}'>#{gear.name}</option>"
		end
		s.html_safe
	end
end
