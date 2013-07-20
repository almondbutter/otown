class LinksController < ApplicationController
  def show
  	@link = Link.find(params[:id])
  end

  def new   
    @link = Link.new
  end

  def create
  	@link = Link.new(params[:link])

  	respond_to do |format|
  		if @link.save
  			format.html { render :action => "create" }
  			format.json { render :action => "new" }
  		else
  			format.html { render :action => "new" }
  			format.html { render :json => @link.errors, :status => :unprocessable_entity }
  		end
  	end
  end
end  