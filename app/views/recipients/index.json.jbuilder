json.array!(@recipients) do |recipient|
  json.extract! recipient, :id, :user_id, :first_name, :last_name, :email, :phone, :address, :address2, :city, :state, :country
  json.url recipient_url(recipient, format: :json)
end
