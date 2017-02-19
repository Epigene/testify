class ApiController < ApplicationController

  # POST api_path | /api
  def produce_scaffold
    # expects params[:content] to be present
    render json: ApiResponseBuilder.new(params).execute
  end

end
