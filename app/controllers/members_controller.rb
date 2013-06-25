class MembersController < ApplicationController
  def index
    render json: Member.all
  end
  
  def show
    render json: Member.find(params[:id])
  end
  
  def create
    member = Member.new(params[:member])
    
    if member.save
      render json: member
    else
      render json: member, status: 422
    end
  end
  
  def update
    member = Member.find(params[:id])
    
    if member.update_attributes(params[:member])
      render json: member
    else
      render json: member, status: 422
    end
  end

  def destroy
    member = Member.find(params[:id])
    
    if member.destroy
      render json: member, status: 204
    else
      render json: member
    end
  end
end