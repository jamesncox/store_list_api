class ListSerializer
  include FastJsonapi::ObjectSerializer
  attributes :item, :price, :quantity
  belongs_to :store
end
