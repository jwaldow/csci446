class Article < ActiveRecord::Base
	validates :title, :author_name, :body, :creation_date, :name_not_pat, presence: true

	def name_not_pat
		if	:author_name.include?("Pat")
			errors.add( "Name cannot contain Pat")
		end
	end

	
end

