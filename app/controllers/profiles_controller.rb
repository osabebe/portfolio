class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to action: "index"
    else
      redirect_to action: "new"
    end
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    if @profile.update(profile_params)
      redirect_to :action => "index", :id => @profile.id
    else
      redirect_to :action => "new"
    end
  end

  private
  def profile_params
    params.require(:profile).permit(:name_jp, :name_en, :hobby, :public_relations, :image, :career, :email, :birthday, :instagram_url, :github_url, :strong_point, :language, :framework, :deploy)
  end
end
