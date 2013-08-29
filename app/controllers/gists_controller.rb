class GistsController < ApplicationController

  before_filter :require_current_user!, :only => [:index]

  def index
    @gists = Gist.find_all_by_user_id(current_user.id)
    
    render :json => @gists
  end

end
