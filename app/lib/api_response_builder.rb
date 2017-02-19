class ApiResponseBuilder
  # This service class takes in the params hash from Api controller and produces the response hash

  def initialize(params)
    @content = params[:content].to_s
  end

  def execute
    response_hash = if @content.blank?
      empty_request_response
    elsif @content.lines.size > 2000
      too_many_lines_response
    elsif @content.size > 120000
      too_many_symbols_response
    end

    # do actual processing if no quickfail occured
    response_hash = if response_hash.blank?
      # RSpec::Scaffold.something # when ready # TODO
      [invalid_ruby_response, ok_response].sample
    end

    return response_hash
  end

  private
    def empty_request_response
      return {
        result: "ERROR",
        error: "Empty request received. Please provide some code!",
      }
    end

    def too_many_lines_response
      return {
        result: "ERROR",
        error: "Processable text is more than 2000 lines!",
      }
    end

    def too_many_symbols_response
      return {
        result: "ERROR",
        error: "Processable text is more than 120000 symbols long!",
      }
    end

    def invalid_ruby_response
      return {
        result: "ERROR",
        error: "Processable text is not valid Ruby code! Error reads: 'dummy error'",
      }
    end

    def ok_response
      return {
        result: "OK",
        scaffold: "dummy scaffold",
      }
    end

end
