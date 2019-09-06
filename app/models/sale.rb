class Sale < ApplicationRecord
validates :cod, uniqueness:true
validates :detail, presence:true
validates_inclusion_of :category, in: [1, 2, 3, 4]
validates_numericality_of :value, only_integer: true
validates :discount, numericality: {only_integer: true, lees_than_or_equal_to:40}

end
