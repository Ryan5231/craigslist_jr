class Category < ActiveRecord::Base
  has_many :posts
  # Remember to create a migration!

  # def to_s
  #   "#{name}"
  # end
end
