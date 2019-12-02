class Cat < ApplicationRecord
  belongs_to :owner

  def self.names
    distinct.pluck(:name)
  end

  def self.fluffies
    where(fluffy: true)
  end
  
  def self.olds
    where('age > ?', 8)
  end

  def self.middle_aged
    where(age: (1..8))
  end

  def self.youngest_cats(num)
    order(age: :asc).limit(num)
  end

  def self.oldest_cats(num)
    order(age: :desc).limit(num)
  end

  def self.age_breakdown
    order(age: :asc).group(:age).count
  end

end
