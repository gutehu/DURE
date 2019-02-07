class Duer < ApplicationRecord
  belongs_to :user
  has_many :workunits
end
