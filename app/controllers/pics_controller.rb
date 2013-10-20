class PicsController < ApplicationController
	before_filter :authenticate_user!, :only => [:new, :create]
def index
	@pics = Pic.all
end

def new
	@pic = Pic.new
	end

def create
	@pics = Pic.create(params[:pic])
	redirect_to pics_path
end

end
