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

  def show_by_proj
    @exp_id = params[:exp_id]
    @group_id = params[:group_id]

    if @group_id == "all"
      @ofs = params[:ofs].to_i
      if params[:commit] == 'Previous'
        @ofs -= 20
      else
        @ofs += 20
      end
      if @ofs < 0
        @ofs = 0
      end

      @results = ProResult.where(["exp_id = ?", @exp_id ]).limit(20).offset(@ofs)
      if @results.size < 20
        @ofs = 0
      end

    else
      @results = ProResult.where(["exp_id = ? and group_id=?", @exp_id, @group_id ]).limit(20)
    end
  end

end
