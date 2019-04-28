module UsersHelper
  def find_user
    User.find(current_user.id)
  end
end
