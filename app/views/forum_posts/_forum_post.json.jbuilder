json.extract! forum_post, :id, :ID_User, :ID_Role, :content, :description, :isHandBook, :title, :created_at, :updated_at
json.url forum_post_url(forum_post, format: :json)
