class CatSerializer
  include FastJsonapi::ObjectSerializer
  attributes :age

  attribute :name_and_breed do |object|
    "#{object.name} - #{object.breed}"
  end

  attribute :owner do |object|
    OwnerSerializer.new(object.owner)
  end
end
