require "rails_helper" 

describe "outreach model" do
  let(:outreach) { Outreach.new(id: 20, name: "Test Template", image: "http://iambored.pro/wp-content/uploads/2014/04/funny-fun-fun-com.jpg", description: "Test outreach template.")}

  describe "Gets initialized with basic attributes" do
    it "has an ID" do
      expect(outreach.id).to eq(20)
    end

    it "has a name" do
      expect(outreach.name).to eq("Test Template")
    end

    it "has an image url" do
      expect(outreach.image).to eq("http://iambored.pro/wp-content/uploads/2014/04/funny-fun-fun-com.jpg")
    end

    it "has a description" do
      expect(outreach.description).to eq("Test outreach template.")
    end
  end

end  