class HumanController < ApplicationController
  def show_by_chr
    @chr = params[:chr]
    @ofs = params[:ofs].to_i
    if @ofs.nil?
      @ofs = 0
    else
      if params[:commit] == 'Previous'
        @ofs -= 20
      elsif params[:commit] == 'Next'
        @ofs += 20
      end
    end

    if @ofs < 0
      @ofs = 0
    end
    @identified_summary = IdentifiedSummaryByChr.where(["chr= ?", @chr])[0]
    @records = Protein.where(["chr = ?", @chr ]).limit(20).offset(@ofs)

    # check whether there is enough records
    if @records.size < 20
      @ofs = 0
    end
  end

  def show_by_proj
    @exp_id = params[:exp_id]
    @id = params[:id]
    @type = params[:type]
    @type ||= 'pro'

    @project = Project.find(@exp_id)
    @exp_data_summary = @project.exp_data_summary

    @ofs = params[:ofs].to_i
    if params[:commit] == 'Previous'
      @ofs -= 20
    elsif params[:commit] == 'Next'
      @ofs += 20
    end
    if @ofs < 0
      @ofs = 0
    end

    if @id == "all"
      
      if @type == 'pro'
        @results = ProResult.where(["exp_id = ?", @exp_id ]).limit(20).offset(@ofs)
      else 
        @results = PepResult.where(["exp_id = ?", @exp_id ]).limit(20).offset(@ofs)
      end

      if @results.size < 20
        @ofs = 0
      end

    else
      if @type == 'pro'
        @results = ProResult.where(["exp_id = ? and group_id=?", @exp_id, @id ]).limit(20)
      else 
        @results = PepResult.where(["exp_id = ? and query_number=?", @exp_id, @id ]).limit(20)
      end

    end
  end

end
