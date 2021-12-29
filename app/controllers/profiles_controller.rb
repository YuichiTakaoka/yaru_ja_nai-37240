class ProfilesController < ApplicationController
  before_action :authenticate_user!, only: :index

  def index
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

  private

  def profile_params
    params.require(:profile).permit(:image, :name, :position_id, :consept, :depertment_id, :division_id, :license_id, :strength,
                                    :weakness).merge(user_id: current_user.id)
  end
end
