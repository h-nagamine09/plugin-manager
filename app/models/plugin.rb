class Plugin < ApplicationRecord
   validates :plugin_name, presence: true, length: { maximum: 50}
  validates :price, presence: true, length: { maximum: 50}
  validates :company, presence: true, length: { maximum: 50}
  validates :description, presence: true, length: { maximum: 255}
  validates :content, presence: true, length: { maximum: 255}
  validates :link_url, presence: true, length: { maximum: 255}
end
