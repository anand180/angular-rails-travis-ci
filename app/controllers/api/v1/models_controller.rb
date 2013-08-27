class Api::V1::ModelsController < ApplicationController
  
  respond_to :json
  
  def index
    render json: Model.all, root: false
    
  end
  
  def show
    
  end
end
