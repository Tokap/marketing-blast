require "rails_helper" 

describe "customer model" do

let(:customer) { Customer.new(id: 20, first_name: "John", last_name: "Smith", phone: "+15558675309", email: "johnwsmith@fake.gmail.com")}

  describe "Gets initialized with basic attributes" do
    it "has an ID" do
      expect(customer.id).to eq(20)
    end

    it "has a first name" do
      expect(customer.first_name).to eq("John")
    end

    it "has a last name" do
      expect(customer.last_name).to eq("Smith")
    end

    it "has a phone number" do
      expect(customer.phone).to eq("+15558675309")
    end

    it "has an email address" do
      expect(customer.email).to eq("johnwsmith@fake.gmail.com")
    end
  end

  describe "Gets initialized with basic attributes" do
    let(:format_test) { Customer.new(id: 25, first_name: "John", last_name: "Smith", phone: "5558675309", email: "johnwsmith@fake.gmail.com")}
    it "has an email address" do
      expect(format_test.phone).to eq("5558675309")
      format_test.format_phone
      expect(format_test.phone).to eq("+15558675309")
    end
  end
end