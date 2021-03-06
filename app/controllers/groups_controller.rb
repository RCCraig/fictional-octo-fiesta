class GroupsController < ApplicationController
  before_action :authenticate_user! 
  
  def index
    @groups = Group.all
  end
  
 def show
   @group = Group.find(params[:id])
 end
  
  def new
    @group = Group.new
  end
  
 def create
   @group = Group.new(group_params)   
   current_user.groups << @group   
   flash[:notice] = "Group created!"
   redirect_to profile_path(current_user)
  
   
 end
  private

  def group_params
    params.require(:group).permit(:name)
  end

end
