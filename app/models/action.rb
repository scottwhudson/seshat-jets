class Action < ApplicationRecord
  belongs_to :page

  before_validation :create_uuid

  validates :name, presence: true
  validates :page_id, presence: true
  validates :uuid, presence: true

  private

  def create_uuid
    self.uuid = SecureRandom.uuid
  end
end
