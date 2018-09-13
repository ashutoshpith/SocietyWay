class TSConnect < ApplicationRecord
  belongs_to :billing
  belongs_to :shop
  belongs_to :tenant
end
