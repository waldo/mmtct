class TinsController < ApplicationController
  # GET /tins/1
  # GET /tins/1.json
  def show
    @tin = Tin.find_by_code(params[:tin_code])
    redirect_to(root_path) and return unless @tin

    @holder = Holder.new(:tin => @tin)
    @past_holders = Holder.all(:conditions => { :tin_id => @tin.id }, :order => "created_at desc")
    @last_holder = @past_holders.first

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tin }
    end
  end
end
