class SpreadsheetsController < ApplicationController
  before_action :set_spreadsheet, only: [:show, :edit, :update, :destroy]

  # POST /spreadsheets
  # POST /spreadsheets.json
  def create
    @spreadsheet = Spreadsheet.new(spreadsheet_params)

    respond_to do |format|
      if @spreadsheet.save
        format.html { redirect_to @spreadsheet, notice: 'Spreadsheet was successfully created.' }
        format.json { render :show, status: :created, location: @spreadsheet }
      else
        format.html { render :new }
        format.json { render json: @spreadsheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spreadsheets/1
  # PATCH/PUT /spreadsheets/1.json
  def update
    #TODO: add a response for errors
    #TODO: add method to prevent duplicate client entry
    @spreadsheet = Spreadsheet.find(params[:id])
    @spreadsheet.add_to_customer_list
    respond_to do |format|
      format.html { redirect_to "/", notice: 'Customers Uploaded.' }
      format.json { render :show, status: :ok }
    end
  end

  # DELETE /spreadsheets/1
  # DELETE /spreadsheets/1.json
  def destroy
    @spreadsheet.destroy
    respond_to do |format|
      format.html { redirect_to spreadsheets_url, notice: 'Spreadsheet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spreadsheet
      @spreadsheet = Spreadsheet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spreadsheet_params
      params.require(:spreadsheet).permit(:name, :identifier)
    end
end
