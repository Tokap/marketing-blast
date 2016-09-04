class StaticController < ApplicationController

  def main
    @spreadsheets = Spreadsheet.all
  end

  def review
    @customers = Customer.all
    @outreaches = Outreach.all
    @spreadsheets = Spreadsheet.all
  end

  def manage
    @outreach = Outreach.new
    @customer = Customer.new
    @spreadsheet = Spreadsheet.new
  end


end