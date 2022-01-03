class Movie < ApplicationRecord
  belongs_to :director

  include PgSearch::Model
  pg_search_scope :search, against: [:title, :description], using: {tsearch: {prefix: true}}
  pg_search_scope :autocomplete, against: [:title], using: {tsearch: {prefix: true}}
end
