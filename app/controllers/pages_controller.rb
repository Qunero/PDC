class PagesController < ApplicationController
	def Home
		@title = "Home"
	end

	def Projects
		@title = "Projects"
	end

	def Search
		@title = "Search"
	end

	def User
		@title = "User"
	end

	def Contact
		@title = "Contact"
	end
	def Explore
		@title = "Explore"
	end

end
