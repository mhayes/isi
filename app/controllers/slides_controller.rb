class SlidesController < ApplicationController
  def create    
    slide = Slide.create(:image => params[:Filedata], :project_id => params[:project_id])
    render :json => {:success => true}
  end
  
  def destroy
    @slide = Slide.find(params[:id])
    @slide.destroy
  end

end
