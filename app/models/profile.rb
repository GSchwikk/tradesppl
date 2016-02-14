class Profile < ActiveRecord::Base
    
    belongs_to :user
    has_and_belongs_to_many :categories
    has_many :reviews

    validate :validate_categories

    has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
    
  def validate_categories
    errors.add(:categories, "of skills above maximum, select 3 or less") if self.categories.size > 3
    #errors[:base] << "too many categories" if self.categories.size > 3
  end


end