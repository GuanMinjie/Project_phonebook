class Linkman < ApplicationRecord
    belongs_to :user
   validates :name ,presence:true,length:{maximum: 30}
   validates :number, presence:true,length:{maximum: 20}
   #after_destroy :log_destroy_action
   
  

end
