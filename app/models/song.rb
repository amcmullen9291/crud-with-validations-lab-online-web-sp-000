class Song < ApplicationRecord
  validates_presence_of :title, null: false
  validates_presence_of :released 
  validates_presence_of :release_year, null: false if -> {:released == "true"}
  validates :release_year, on_or_before: lambda { Date.current }
end
