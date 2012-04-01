class TinsController < ApplicationController
  # GET /tins/1
  # GET /tins/1.json
  def show
    @tin = Tin.find_by_code(params[:tin_code])
    redirect_to(root_path) and return unless @tin

    @past_holders = Holder.where(:tin_id => @tin.id).order("created_at desc")
    @last_holder = @past_holders.first
    @is_first_holder = @past_holders.count == 0
    unless @is_first_holder
      @holder = Holder.new(:tin => @tin, :email => @last_holder.recipient_email, :name => @last_holder.recipient_name)
    else
      @holder = Holder.new(:tin => @tin)
    end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tin }
    end
  end
end
