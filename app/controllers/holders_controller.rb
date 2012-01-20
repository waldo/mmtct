class HoldersController < ApplicationController
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
end
