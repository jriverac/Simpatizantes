class Comment < ActiveRecord::Base
  belongs_to :supporter
  validates_presence_of :content
  validates_presence_of :contact_type
end
