class GroupsController < ApplicationController
  
def index
@data=Group.all
end
  
def new
@data=Group.new
end

def create
@data=Group.new(params[:gtpl])  
if @data.save
 redirect_to :action=>'index'
end
end
    
def show
  @data=Group.find(params[:id])
end 

def edit
@data=Group.find(params[:id]) 
end

def update
@data=Group.find(params[:id])  
if @data.update_attributes(params[:group])
redirect_to :action=>'index',:id=>@data
else
  render :action=>'edit'
end
end
 
 def delete
 @data=Group.find(params[:id])
 if @data.destroy
 redirect_to :action=>'index'  
end
end   
    
    
end



