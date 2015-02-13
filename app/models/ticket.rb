class Ticket < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  validates_presence_of :description, message: "must be present"

  belongs_to :user

  def user_first_name
    user.first_name if user
  end

end
