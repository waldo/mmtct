class EmailsController < ApplicationController
  # POST /:tin_code/holders
  def create
    @email = Email.new(params[:email])

    respond_to do |format|
      if @email.save
        Pony.mail(:to => "#{ENV['EMAIL_ADMINS']}", :from => "#{ENV['EMAIL_FROM']}", :subject => "New sign-up detected", :html_body => "<p>New sign-up: #{@email.email}</p><p>All signups:</p><p>#{Email.all.map(&:email).join('</p><p>')}</p>")
        format.html { redirect_to root_path, notice: "Email sent. You'll hear from us soon." }
      else
        format.html { redirect_to root_path, alert: 'Eep, error.' }
      end
    end
  end
end
