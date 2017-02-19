# spring rspec spec/lib/api_response_builder_spec.rb
RSpec.describe ApiResponseBuilder do
  klass = described_class

  describe "#initialize(params)" do
    it "should return an ApiResponseBuilder instance" do
      expect(klass.new({}).class).to eq klass
    end
  end

  describe "#execute" do
    let(:params) { {} }

    subject {klass.new(params) }

    context "when initialized with empty params" do
      let(:params) { {} }

      it "should return a hash with failure data" do
        exp = {
          result: "ERROR",
          error: "Empty request received. Please provide some code!",
        }

        expect(subject.execute).to eq exp
      end
    end

    context "when initialized with legitimate processable params" do
      let(:params) { {content: "class User; def method; end; end"} }

      it "should return a hash with success data" do
        exp = {
          result: "OK",
          scaffold: "?!",
        }

        expect(subject.execute).to eq exp
      end
    end

  end

end
