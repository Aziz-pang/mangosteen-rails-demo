class Api::V1::ItemsController < ApplicationController
  def create
    item = Item.new amount: params[:amount], user_id: params[:user_id]
    if item.save
      render json: {resources: item}
    else
      render json: {errors: item.errors}
    end
  end

  def index
    items = Item.page(params[:page])
    render json: {resources:items,count: items.size}
  end
end
