class Workunit < ApplicationRecord
  belongs_to :duer
  has_many :risks
end
