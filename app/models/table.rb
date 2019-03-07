class Table < ApplicationRecord
  belongs_to :restaurant, depended: :destroy
end
