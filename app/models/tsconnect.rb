class Tsconnect < ApplicationRecord
  belongs_to :billing
  belongs_to :shop
  belongs_to :tenant
end
