class Action < ApplicationRecord
  belongs_to :page

  validates :name, presence: true
  validates :page_id, presence: true
end
