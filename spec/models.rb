class User < ActiveRecord::Base
  has_one :profile, :autocreate => true
end

class Profile < ActiveRecord::Base
  belongs_to :user
end
