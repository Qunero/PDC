class PagesController < ApplicationController
	def Contact
		@title = "Contact"
	end

	def Explore
		@title = "Explore"
		@chr_group1 = (1..12).to_a
		@chr_group2 = %w[13 14 15 16 17 18 19 20 21 22 X Y]
	end

	def Home
		@title = "Home"
	end

	def Projects
		@title = "Projects"
	end

	def Result
		@title = "Result"
		if params[:commit]=='Search_Pro'
			@result_type = 'protein'
			@results = Protein.where(["pro_id = ?", params[:pro_id] ]).all
		else
			@result_type = 'gene'
			@results = Protein.where(["gene = ?", params[:gene_id] ]).all
		end 
	end

	def Search
		@title = "Search"
	end

	def User
		@title = "User"
	end

end
