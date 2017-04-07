class ItemsController < ApplicationController
  before_action :set_list, only: [:create, :destroy]

  def create
    @item = @list.items.create(item_params)
    redirect_to @list, notice: 'Item was successfully added.'
  end

  def destroy
    @item = @list.items.find(params[:id])
    @item.destroy
    redirect_to @list, notice: 'Item was successfully destroyed.'
  end

  private

  def set_list
    @list = List.friendly.find(params[:list_id])
  end

  def item_params
    params.require(:item).permit(:task)
  end
end
