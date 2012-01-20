class TinsController < ApplicationController
  # GET /tins/1
  # GET /tins/1.json
  def show
    @tin = Tin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tin }
    end
  end
end
