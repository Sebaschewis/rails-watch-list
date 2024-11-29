class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie_id, uniqueness: { scope: :list_id, message: "The movie is in the list" }
  validates :comment, length: { minimum: 6 }
end
