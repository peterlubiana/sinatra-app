class User < ActiveRecord::Base
  has_many :news



  validates :username, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true


  
end

class News < ActiveRecord::Base

end
