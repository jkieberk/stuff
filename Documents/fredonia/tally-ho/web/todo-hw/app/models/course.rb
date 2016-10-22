class Course < ApplicationRecord
  has_many :counters, foreign_key: "courses_id"
end
