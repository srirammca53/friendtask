class TagsController < ApplicationController
  def create
  if params[:photo_id]
   
   @tag = Tag.create(params[:tag])

   @photo = Photo.find(params[:photo_id])    
   redirect_to  user_album_photo_path(:user_id => current_user.id, :album_id =>@photo.album_id , :id => params[:photo_id])

  end
  if params[:album_id]
   @tag = Tag.create(params[:tag])
   redirect_to user_album_path(:user_id => current_user.id, :id => params[:album_id])
  end
  end
 def index
   @tags = Tag.where("user_id = ?", params[:id])
#raise @tags.inspect
 end

def destroy
    raise "yes"
  end


end
