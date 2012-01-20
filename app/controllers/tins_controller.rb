class TinsController < ApplicationController
  # GET /tins
  # GET /tins.json
  def index
    @tins = Tin.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tins }
    end
  end

  # GET /tins/1
  # GET /tins/1.json
  def show
    @tin = Tin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tin }
    end
  end

  # GET /tins/new
  # GET /tins/new.json
  def new
    @tin = Tin.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tin }
    end
  end

  # GET /tins/1/edit
  def edit
    @tin = Tin.find(params[:id])
  end

  # POST /tins
  # POST /tins.json
  def create
    @tin = Tin.new(params[:tin])

    respond_to do |format|
      if @tin.save
        format.html { redirect_to @tin, notice: 'Tin was successfully created.' }
        format.json { render json: @tin, status: :created, location: @tin }
      else
        format.html { render action: "new" }
        format.json { render json: @tin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tins/1
  # PUT /tins/1.json
  def update
    @tin = Tin.find(params[:id])

    respond_to do |format|
      if @tin.update_attributes(params[:tin])
        format.html { redirect_to @tin, notice: 'Tin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tins/1
  # DELETE /tins/1.json
  def destroy
    @tin = Tin.find(params[:id])
    @tin.destroy

    respond_to do |format|
      format.html { redirect_to tins_url }
      format.json { head :no_content }
    end
  end
end
