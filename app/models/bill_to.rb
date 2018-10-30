class BillTo < ApplicationRecord
  has_many :members
  has_many :sales_staffs
end
