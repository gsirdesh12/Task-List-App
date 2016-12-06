class HomeController < ProtectedController
  def index
    @tasks_user = User.find user_id: params[session[:user_id]]
    @tasks = @tasks_user.taskks
  end
end
