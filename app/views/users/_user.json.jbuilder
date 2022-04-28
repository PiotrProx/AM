json.extract! user, :id, :nickName, :name, :eMail, :phoneNumber, :login, :password_digest, :created_at, :updated_at
json.url user_url(user, format: :json)
