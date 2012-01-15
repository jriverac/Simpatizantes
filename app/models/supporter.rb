class Supporter < ActiveRecord::Base

  
  belongs_to :user
  has_many :comments
  validates_presence_of :first_name
  validates_presence_of :father_last_name
  validates_uniqueness_of :email
  
 


end
