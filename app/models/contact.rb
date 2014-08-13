class Contact < ActiveRecord::Base
  belongs_to :installation
  belongs_to :category
  has_many :reviews, :dependent => :destroy
  accepts_nested_attributes_for :reviews
  validates :name, presence: true
  validates :category_id, presence: true
  validates :installation_id, presence: true
  validates :phone, presence: true
end
