class StoreSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  has_many :lists
end
