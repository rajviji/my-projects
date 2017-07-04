class UsersController < ApplicationController
  def index
@user=User.all
  end

  def new
@user=User.new
end

def create
   @user=User.new(params_user)
   if @user.save
   redirect_to users_path
   else
   render "new"
   end
 end
 def edit
  @user=User.find(params[:id])
 end

def update
  @user=User.find(params[:id])
  if @user.update(params_user)
  redirect_to users_path
  else
  render "edit"
  end
end
def delete
    @user=User.find(params[:format]) 
     if @user.delete
     redirect_to users_path
   else
   render "delete"
end
end

  def show
@user=User.find(params[:id])
  end
 
private

def params_user
params.require(:user).permit(:name ,:age ,:palce ,:phone)
end

end
