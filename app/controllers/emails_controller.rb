class EmailsController < ApplicationController
  # POST /:tin_code/holders
  def create
    @email = Email.new(params[:email])

    respond_to do |format|
      if @email.save
        email_admins("New sign-up detected", "<p>New sign-up: #{@email.email}</p><p>All signups:</p><p>#{Email.all.map(&:email).join('</p><p>')}</p>")
        format.html { redirect_to root_path, notice: "Email saved. You'll hear from us soon." }
      else
        format.html { redirect_to root_path, alert: 'Eep, error.' }
      end
    end
  end
end
