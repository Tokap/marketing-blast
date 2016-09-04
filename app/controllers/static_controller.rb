class StaticController < ApplicationController

  def main
    @spreadsheets = Spreadsheet.all
  end

  def information
    @customers = Customer.all
    @outreaches = Outreach.all
    @spreadsheets = Spreadsheet.all
  end

end