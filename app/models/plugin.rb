class Plugin < ApplicationRecord
  belongs_to :plugin_kind
  mount_uploader :picture,PictureUploader
  validates :plugin_name, presence: true, length: { maximum: 50}
  validates :plugin_kind, presence: true, length: { maximum: 50}
  validates :price, presence: true, length: { maximum: 50}
  validates :company, presence: true, length: { maximum: 50}
  validates :description, presence: true, length: { maximum: 255}
  validates :content, presence: true, length: { maximum: 255}
  validates :link_url, format: /\A#{URI::regexp(%w(http https))}\z/
end
