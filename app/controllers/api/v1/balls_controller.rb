class Api::V1::BallsController < Api::V1::BaseController
  before_action :set_ball, only: [ :show, :update ]
  def index
    @balls = policy_scope(Ball)
  end


  def show
  end

  def update
    if @ball.update(ball_params)
      render :show
    else
      render_error
    end
  end

  private

  def set_ball
    @ball = Ball.find(params[:id])
    authorize @ball  # For Pundit
  end

  def ball_params
    params.require(:ball).permit(:name, :comment)
  end

  def render_error
    render json: { errors: @ball.errors.full_messages },
      status: :unprocessable_entity
  end

end
