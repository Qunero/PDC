class ExpParamatersController < ApplicationController
  # GET /exp_paramaters
  # GET /exp_paramaters.json
  def index
    @exp_paramaters = ExpParamater.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exp_paramaters }
    end
  end

  # GET /exp_paramaters/1
  # GET /exp_paramaters/1.json
  def show
    @exp_paramater = ExpParamater.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exp_paramater }
    end
  end

  # GET /exp_paramaters/new
  # GET /exp_paramaters/new.json
  def new
    @exp_paramater = ExpParamater.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exp_paramater }
    end
  end

  # GET /exp_paramaters/1/edit
  def edit
    @exp_paramater = ExpParamater.find(params[:id])
  end

  # POST /exp_paramaters
  # POST /exp_paramaters.json
  def create
    @exp_paramater = ExpParamater.new(params[:exp_paramater])

    respond_to do |format|
      if @exp_paramater.save
        format.html { redirect_to @exp_paramater, notice: 'Exp paramater was successfully created.' }
        format.json { render json: @exp_paramater, status: :created, location: @exp_paramater }
      else
        format.html { render action: "new" }
        format.json { render json: @exp_paramater.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exp_paramaters/1
  # PUT /exp_paramaters/1.json
  def update
    @exp_paramater = ExpParamater.find(params[:id])

    respond_to do |format|
      if @exp_paramater.update_attributes(params[:exp_paramater])
        format.html { redirect_to @exp_paramater, notice: 'Exp paramater was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exp_paramater.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exp_paramaters/1
  # DELETE /exp_paramaters/1.json
  def destroy
    @exp_paramater = ExpParamater.find(params[:id])
    @exp_paramater.destroy

    respond_to do |format|
      format.html { redirect_to exp_paramaters_url }
      format.json { head :no_content }
    end
  end
end
