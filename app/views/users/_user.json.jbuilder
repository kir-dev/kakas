json.extract! user, :id, :name, :auth_sch_id, :mail, :admin, :image, :introduction, :created_at, :updated_at
json.url user_url(user, format: :json)