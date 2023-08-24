class UsersController < ApplicationController
  def user_calendar
  end

  def ms_calendar_data

  end




  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to ms_calendar_path
    end


  end

  def ms_calendar    #TODO sprav to aby to islo na stranke
    if !current_user.last_period_start && !current_user.cycle_length && !current_user.menstruation_length
      redirect_to ms_calendar_data_path
    end

  end

  private

  def user_params
    params.require(:user).permit(:last_period_start, :cycle_length, :menstruation_length)
  end
end
