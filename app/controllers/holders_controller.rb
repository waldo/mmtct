class HoldersController < ApplicationController
  # GET /holders
  # GET /holders.json
  def index
    @holders = Holder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @holders }
    end
  end

  # GET /holders/1
  # GET /holders/1.json
  def show
    @holder = Holder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @holder }
    end
  end

  # GET /holders/new
  # GET /holders/new.json
  def new
    @holder = Holder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @holder }
    end
  end

  # GET /holders/1/edit
  def edit
    @holder = Holder.find(params[:id])
  end

  # POST /holders
  # POST /holders.json
  def create
    @holder = Holder.new(params[:holder])

    respond_to do |format|
      if @holder.save
        format.html { redirect_to @holder, notice: 'Holder was successfully created.' }
        format.json { render json: @holder, status: :created, location: @holder }
      else
        format.html { render action: "new" }
        format.json { render json: @holder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /holders/1
  # PUT /holders/1.json
  def update
    @holder = Holder.find(params[:id])

    respond_to do |format|
      if @holder.update_attributes(params[:holder])
        format.html { redirect_to @holder, notice: 'Holder was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @holder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /holders/1
  # DELETE /holders/1.json
  def destroy
    @holder = Holder.find(params[:id])
    @holder.destroy

    respond_to do |format|
      format.html { redirect_to holders_url }
      format.json { head :no_content }
    end
  end
end
