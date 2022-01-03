class Director < ApplicationRecord
  has_many :movies

  include PgSearch::Model
  pg_search_scope :search, against: [:name], using: {tsearch: {prefix: true}}
end
