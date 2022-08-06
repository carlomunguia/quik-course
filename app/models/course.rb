class Course < ApplicationRecord
  validates :title,
            :short_description,
            :language,
            :price,
            :level,
            presence: true
  validates :description, presence: true, length: { minimum: 5 }

  belongs_to :user
  def to_s
    title
  end
  has_rich_text :description

  extend FriendlyId
  friendly_id :title, use: :slugged

  ransacker :price do
    Arel.sql("to_char(\"#{table_name}\".\"price\", '99999999999D99')")
  end
end
