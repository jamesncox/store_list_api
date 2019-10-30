class ListSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :price, :quantity
end
