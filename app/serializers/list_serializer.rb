class ListSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :price, :quantity
  belongs_to :store
end
