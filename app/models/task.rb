class Task < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  validates :dua_date, presence: true
end
