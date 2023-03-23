class Api::V1::BallsController < Api::V1::BaseController
  before_action :set_ball, only: [ :show ]
  def index
    @balls = policy_scope(Ball)
  end


  def show
  end

  private

  def set_ball
    @ball = Ball.find(params[:id])
    authorize @ball  # For Pundit
  end
end
