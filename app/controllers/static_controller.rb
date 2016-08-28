class StaticController < ApplicationController

  def main
    @spreadsheets = Spreadsheet.all
  end

end