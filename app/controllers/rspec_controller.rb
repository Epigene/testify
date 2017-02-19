require 'rest-client'

class RspecController < ApplicationController

  # GET root_path | /
  def new
    render template: "rspec/new"
  end

  # POSR scaffold_path | /scaffold
  def scaffold
    response_json = RestClient.post(api_path, params.except(:action, :controller))

    render template: "rspec/show", locals: JSON.parse(response_json)
  end
end
