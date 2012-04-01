class HoldersController < ApplicationController
  # POST /:tin_code/holders
  def create
    @holder = Holder.new(params[:holder])
    tin = Tin.find_by_code(params[:tin_code])
    @holder.tin = tin
    @holder.ip = request.remote_ip

    respond_to do |format|
      if tin and @holder.save
        Pony.mail(:to => "#{ENV['EMAIL_ADMINS']}", :from => "#{ENV['EMAIL_FROM']}", :subject => "A tin has been passed on", :html_body => "<p>Tin: #{tin.code}</p><p>To: #{tin.email}")
        format.html { redirect_to tin_path(tin.code), notice: "Mission accomplished - the tin must be passed on soon." }
      else
        format.html { redirect_to root_path, alert: "Eep, error." }
      end
    end
  end

  # PUT /:tin_code/holders/1
  def update
    tin = Tin.find_by_code(params[:tin_code])
    @holder = Holder.where("tin_id = ? and id = ? and created_at >= ?", tin.id, params[:id], 1.day.ago).first

    respond_to do |format|
      if @holder and @holder.update_attributes(params[:holder])
        format.html { redirect_to tin_path(@holder.tin.code), notice: "Your wish is my command." }
      else
        format.html { redirect_to root_path, notice: "Eep, error." }
      end
    end
  end
end
