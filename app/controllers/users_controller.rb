class UsersController < ApplicationController
  def index
    @users = User.all.order(created_at: :desc)
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])

    if @user.destroy
      redirect_to(users_path, notice: 'Excluído com sucesso')
    else
      redirect_to(users_path, notice: 'Não foi possível excluir')
    end
  end
end
