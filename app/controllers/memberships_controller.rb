class MembershipsController < ApplicationController
  def create
    @group = Group.find(params[:group_id])
    @group.users << current_user    
    flash[:notice] = "Group created!"
    redirect_to profile_path(current_user)   
  end
end
