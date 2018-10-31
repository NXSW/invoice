class SalesStaff < ApplicationRecord
  has_many :members
  belongs_to :bill_to
end
