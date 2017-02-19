# spring rspec spec/controllers/api_controller_spec.rb
RSpec.describe ApiController, type: :controller do

  describe "POST :produce_scaffold | /api" do

    context "when request is well-formed and easy to process" do
      it "should render success JSON" do
        exp = {
          result: "OK",
          scaffold: "??",
        }.to_json

        expect(0).to eq 1
      end
    end

    context "when request contains invalid ruby" do
      it "should render fail JSON with appropriate error message" do
        exp = {
          result: "ERROR",
          error: "Processable text is not valid Ruby code! Error reads: '??'",
        }.to_json

        expect(0).to eq 1
      end
    end

    context "when request contains text that is longer than 2k lines" do
      it "should render fail JSON with appropriate error message" do
        exp = {
          result: "ERROR",
          error: "Processable text is more than 2000 lines!",
        }.to_json

        expect(0).to eq 1
      end
    end

    context "when request contains text that is longer than 60*2000 symbols" do
      it "should render fail JSON with appropriate error message" do
        exp = {
          result: "ERROR",
          error: "Processable text is more than 120000 symbols long!",
        }.to_json

        expect(0).to eq 1
      end
    end

  end

end
