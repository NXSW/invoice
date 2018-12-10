class Member < ApplicationRecord
  belongs_to :bill_to
  belongs_to :company
  belongs_to :sales_staff
  paginates_per 50
end
