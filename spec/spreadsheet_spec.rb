require "rails_helper" 

describe "spreadsheet model" do

  let(:spreadsheet) { Spreadsheet.new(id: 20, name: "Test Spreadsheet", identifier: "xyz_ulk123Z789")}

  describe "Gets initialized with basic attributes" do
    it "has an ID" do
      expect(spreadsheet.id).to eq(20)
    end

    it "has a name" do
      expect(spreadsheet.name).to eq("Test Spreadsheet")
    end

    it "has an identifier" do
      expect(spreadsheet.identifier).to eq("xyz_ulk123Z789")
    end
  end

end  