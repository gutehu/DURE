class Risk < ApplicationRecord
  belongs_to :workunit
  has_many :underrisks
end
