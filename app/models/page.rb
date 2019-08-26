class UrlValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    begin
      valid_url = URI.parse(value).is_a?(URI::HTTP)
    rescue URI::InvalidURIError
      false
    end

    record.errors[:url] << "URL must be valid" unless valid_url
  end
end

class Page < ApplicationRecord
  include ActiveModel::Validations

  validates :name, presence: true
  validates :url, url: true
end
