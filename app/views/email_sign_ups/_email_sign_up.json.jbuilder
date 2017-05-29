json.extract! email_sign_up, :id, :email, :notification, :created_at, :updated_at
json.url email_sign_up_url(email_sign_up, format: :json)
