class Tag < ActiveRecord::Base
belongs_to :taggable, :polymorphic => true
  before_create :check_user
  def check_user
    @user = User.find_by_email(self.name)
    if @user
     self.user_id = @user
     return true
    else
     return false
    end
  end
def join_tags
   raise "yes"
  end
end
