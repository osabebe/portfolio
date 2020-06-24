class TopsController < ApplicationController
  def index
    @tops = Top.all
  end

  def new
    @top = Top.new
  end

  def create
    @top = Top.new(top_params)
    if @top.save
      redirect_to action: "index"
    else
      redirect_to action: "new"
    end
  end 

  def edit
    @top = Top.find(params[:id])
  end

  def update
    @top = Top.find(params[:id])
    if @top.update(top_params)
      redirect_to :action => "index", :id => @top.id
    else
      redirect_to :action => "new"
    end
  end

  private
  def top_params
    params.require(:top).permit(:news, :introduction)
  end
end
