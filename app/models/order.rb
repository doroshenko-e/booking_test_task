class Order < ApplicationRecord
  belongs_to :table, depended: :destroy
end