json.extract! spreadsheet, :id, :name, :identifier, :created_at, :updated_at
json.url spreadsheet_url(spreadsheet, format: :json)