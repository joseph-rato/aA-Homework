class House < ApplicationRecord
validates :address, presence: true, uniqueness: true
has_many(
  :persons,
  class_name: 'Person',
  foreign_key: :house_id,
  primary_key: :id
)

end
