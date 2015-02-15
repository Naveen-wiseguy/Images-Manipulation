class PhotosController < ApplicationController

 def new
   @photo=Photo.new
 end

 def create
  @photo =Photo.new(photo_param)
  if @photo.save
    flash[:success]="Saved !"
    redirect_to @photo
  else render 'new'
  end
 end

 def show
  @photo=Photo.find(params[:id])
 end

 def photo_param
   params.require(:photo).permit(:image,:title,:height,:width,:maintain_aspect_ratio)
 end

 def destroy
   Photo.find(params[:id]).destroy
   redirect_to new_photo_path
 end
end
