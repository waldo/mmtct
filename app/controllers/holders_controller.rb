class HoldersController < ApplicationController
  # POST /:tin_code/holders
  def create
    @holder = Holder.new(params[:holder])
    @holder.tin = Tin.find_by_code(params[:tin_code])
    @holder.ip = request.remote_ip

    respond_to do |format|
      if @holder.save
        format.html { redirect_to tin_path(@holder.tin.code), notice: 'Mission accomplished - the tin must be passed on soon.' }
      else
        format.html { redirect_to tin_path(@holder.tin.code), alert: 'Eep, error.' }
      end
    end
  end

  # PUT /holders/1
  def update
    @holder = Holder.find(params[:id])

    respond_to do |format|
      if @holder.update_attributes(params[:holder])
        format.html { redirect_to tin_path(@holder.tin.code), notice: 'Holder was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end
end
