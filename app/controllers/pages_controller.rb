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
		@chr_group1 = (1..12).to_a
		@chr_group2 = %w[13 14 15 16 17 18 19 20 21 22 X Y]
	end

end
