# Gallery
# name:string

class Gallery < ApplicationRecord

  has_many :catalogues

  validates :name_unique, presence: true, uniqueness: true
end
