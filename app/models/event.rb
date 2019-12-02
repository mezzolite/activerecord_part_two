class Event < ApplicationRecord
  belongs_to :owner
  has_many :cats, through :owner

 
end
