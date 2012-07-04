class ExpDataSummariesController < ApplicationController
  # GET /exp_data_summaries
  # GET /exp_data_summaries.json
  def index
    @exp_data_summaries = ExpDataSummary.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exp_data_summaries }
    end
  end

  # GET /exp_data_summaries/1
  # GET /exp_data_summaries/1.json
  def show
    @exp_data_summary = ExpDataSummary.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exp_data_summary }
    end
  end

  # GET /exp_data_summaries/new
  # GET /exp_data_summaries/new.json
  def new
    @exp_data_summary = ExpDataSummary.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exp_data_summary }
    end
  end

  # GET /exp_data_summaries/1/edit
  def edit
    @exp_data_summary = ExpDataSummary.find(params[:id])
  end

  # POST /exp_data_summaries
  # POST /exp_data_summaries.json
  def create
    @exp_data_summary = ExpDataSummary.new(params[:exp_data_summary])

    respond_to do |format|
      if @exp_data_summary.save
        format.html { redirect_to @exp_data_summary, notice: 'Exp data summary was successfully created.' }
        format.json { render json: @exp_data_summary, status: :created, location: @exp_data_summary }
      else
        format.html { render action: "new" }
        format.json { render json: @exp_data_summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exp_data_summaries/1
  # PUT /exp_data_summaries/1.json
  def update
    @exp_data_summary = ExpDataSummary.find(params[:id])

    respond_to do |format|
      if @exp_data_summary.update_attributes(params[:exp_data_summary])
        format.html { redirect_to @exp_data_summary, notice: 'Exp data summary was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exp_data_summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exp_data_summaries/1
  # DELETE /exp_data_summaries/1.json
  def destroy
    @exp_data_summary = ExpDataSummary.find(params[:id])
    @exp_data_summary.destroy

    respond_to do |format|
      format.html { redirect_to exp_data_summaries_url }
      format.json { head :no_content }
    end
  end
end
