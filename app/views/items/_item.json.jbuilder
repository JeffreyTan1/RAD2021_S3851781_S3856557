json.extract! item, :id, :price, :name, :description, :image, :popularity, :collection, :created_at, :updated_at
json.url item_url(item, format: :json)
