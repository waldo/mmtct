class EmailsController < ApplicationController
  # POST /:tin_code/holders
  def create
    @email = Email.new(params[:email])

    respond_to do |format|
      if @email.save
        format.html { redirect_to root_path, notice: "Email sent. You'll hear from us soon." }
      else
        format.html { redirect_to root_path, alert: 'Eep, error.' }
      end
    end
  end
end
