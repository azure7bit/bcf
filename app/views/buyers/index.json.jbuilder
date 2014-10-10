json.array!(@buyers) do |buyer|
  json.extract! buyer, :id, :name, :gender, :company, :job_title, :company_address, :city, :postal_code, :country, :telp, :fax, :mobile, :email, :website
  json.url buyer_url(buyer, format: :json)
end
