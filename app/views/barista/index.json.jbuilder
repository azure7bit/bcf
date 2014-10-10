json.array!(@barista) do |baristum|
  json.extract! baristum, :id, :name, :gender, :age, :company, :job_title, :company_address, :city, :postal_code, :country, :telp, :fax, :mobile, :email, :website
  json.url baristum_url(baristum, format: :json)
end
