class Flat < ApplicationRecord
  belongs_to :tenant
  belongs_to :owner
end
