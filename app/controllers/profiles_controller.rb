class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: :index
  before_action :move_to_index, except: [:index, :show, :new, :create, :search]
  before_action :set_root, only: [:edit, :destroy]

  def index
    @profiles = Profile.all
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @comments = @profile.comments.includes(:user)
    @comment = Comment.new
  end

  def edit
  end

  def update
    if @profile.update(profile_params)
      redirect_to profile_path
    else 
      render :edit
    end
  end

  def destroy
    @profile.destroy
    redirect_to root_path
  end

  def search
    if params[:q]&.dig(:name)
      squished_keywords = params[:q][:name].squish
      params[:q][:name_cont_any] = squished_keywords.split(" ")
    end
    @q = Profile.ransack(params[:q])
    @profiles = @q.result
  end

  private

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def move_to_index
    redirect_to root_path if current_user.id != @profile.user_id
  end

  def set_root
    redirect_to root_path unless @profile.user_id == current_user.id
    end

  def profile_params
    params.require(:profile).permit(:image, :name, :position_id, :consept, :depertment_id, :division_id, :license_id, :strength,
                                    :weakness).merge(user_id: current_user.id)
  end
end
