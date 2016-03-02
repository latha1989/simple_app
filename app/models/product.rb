class Product < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :name, presence: true
  before_save :downcase_name
  before_save :upcase_description

  def downcase_name
    self.name.downcase!
  end

  def upcase_description
     self.description.upcase!
  end


end
