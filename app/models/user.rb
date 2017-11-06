class User < ApplicationRecord
 has_many  :linkmen
  validates :name ,presence: true,length: {maximum:20},uniqueness:{case_sensitive:true }
  has_secure_password
  validates :password ,presence:true,length: {minimum:5}

end
