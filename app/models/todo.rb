class Todo < ApplicationRecord
  has_many :items, dependent: :destroy

  validates_presence_of :title, :created_by
  # validates :title, presence: true と同じ？
end
