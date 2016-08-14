class Spreadsheet < ActiveRecord::Base
  require 'open-uri'

  def spreadsheet_url
    "https://spreadsheets.google.com/feeds/list/#{identifier}/od6/public/values?alt=json"
  end

  def sanitize(number)
    "+1" + number.gsub(/^1|\D/, "")
    # currently strips any leading 1's as a precaution. Consider a more robust cleaning.
  end

  def data_from_spreadsheet
    file = open(spreadsheet_url).read
    JSON.parse(file)
  end
   
  def contacts_from_spreadsheet
    contacts = {}
    data_from_spreadsheet['feed']['entry'].each do |entry|
      name = entry['gsx$name']['$t']
      number = entry['gsx$number']['$t']
      contacts[sanitize(number)] = name
    end
    contacts
  end

  def contacts_numbers
    contacts_from_spreadsheet.keys
  end
   
  def contact_name(number)
    contacts_from_spreadsheet[number]
  end

  def add_to_customer_list
    contacts_from_spreadsheet.each do |number, name|
      Customer.create!(first_name: name, phone: number)
    end
  end

end
