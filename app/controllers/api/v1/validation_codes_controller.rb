class Api::V1::ValidationCodesController < ApplicationController
  def show
    render json: { code: 200, msg: 'show', params: params[:id]}
  end

  def index
    p('index')
    render json: 'index'
  end
end
