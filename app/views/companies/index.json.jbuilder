json.array!(@companies) do |company|
  json.extract! company, :id, :name, :address, :state, :city, :zip_code, :company_rep_id, :approved, :rejected
  json.url company_url(company, format: :json)
end
