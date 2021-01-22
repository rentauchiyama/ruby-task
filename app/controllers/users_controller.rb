class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
  @user = User.new(user_params)
  # binding.pry
  if @user.save
    redirect_to root_path, danger: '登録が完了しました'
  else
    flash.now[:success] = "登録に失敗しました"
    render :new
  end
  # user = User.find_by(params[:email])
  # if user && user.authenticate(params[:password])
  #   flash.now[:alert] = "パスワードが重複しています。"
  #   redirect_to render :new
  # end
  end
  
end
private
def user_params
  params.require(:user).permit(:name, :email, :password, :password_confirmation)
end