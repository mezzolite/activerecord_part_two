class OwnerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :age, :phone
end
