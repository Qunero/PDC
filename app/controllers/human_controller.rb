class HumanController < ApplicationController
	def show_by_chr
		@chr = params[:chr]
		@ofs = params[:ofs].to_i
		if @ofs.nil?
			@ofs = 0
		else
			if params[:commit] == 'Previous'
				@ofs -= 20
			else
				@ofs += 20
			end
		end

		if @ofs < 0
			@ofs = 0
		end

		@records = Protein.where(["chr = ?", @chr ]).limit(20).offset(@ofs)
		
		# check whether there is enough records
		if @records.size < 20
			@ofs = 0
		end
	end
end
