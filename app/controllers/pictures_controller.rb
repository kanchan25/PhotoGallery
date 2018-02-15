class PicturesController < ApplicationController
  def new
    @album = Album.find(params[:album_id])
    @picture = @album.pictures.new
  end

  def create
    @album = Album.find(params[:album_id])
    @picture = @album.pictures.create(picture_params)
    redirect_to album_path(@album)
  end

  def destroy
    @album = Album.find(params[:album_id])
    @picture = @album.pictures.find(params[:id])
    @picture.destroy
 
    redirect_to album_path(@album)
  end
 
  private
    def picture_params
      params.require(:picture).permit(:title, :image,:tag_list)
    end	
end
