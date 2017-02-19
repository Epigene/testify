# spring rspec spec/routing/application_route_spec.rb
RSpec.describe "Application routes", type: :routing do

  describe "Api controller routes" do
    it "should route POST '/api' to Api#produce_scaffold" do
      expect(post: "/api").to route_to(
        controller: "api",
        action: "produce_scaffold",
      )
    end
  end

  describe "Rspec Controller routes" do
    it "should route GET '/' to Rspec#new" do
      expect(get: "/").to route_to(
        controller: "rspec",
        action: "new",
      )
    end

    it "should route POST '/scaffold' to Rspec#scaffold" do
      expect(post: "/scaffold").to route_to(
        controller: "rspec",
        action: "scaffold",
      )
    end
  end


end
