# spec/controllers/rspec_controller_spec.rb
RSpec.describe RspecController, type: :controller do

  describe "GET :new | /" do
    it "should render the :rspec/new template" do
      allow(controller).to receive(:render)
      expect(controller).to receive(:render).with({
        template: "rspec/new", # spec template here
      })

      get :new
    end
  end

  describe "POST :scaffold | /scaffold" do
    before :each do
      @params = {}
    end

    it "should render the :rspec/scaffold template" do
      allow(controller).to receive(:render)
      expect(controller).to receive(:render).with({
        template: "rspec/scaffold", # spec template here
        locals: {}
      })

      post :scaffold, @params
    end
  end

end
