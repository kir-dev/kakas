json.extract! meal, :id, :name, :image, :category_id, :toppings, :string, :created_at, :updated_at
json.url meal_url(meal, format: :json)
