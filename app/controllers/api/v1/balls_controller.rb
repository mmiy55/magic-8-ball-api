class Api::V1::BallsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]

  before_action :set_ball, only: [ :show, :update, :destroy, :shake ]
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

  def create
    @ball = Ball.new(ball_params)
    @ball.user = current_user
    authorize @ball
    if @ball.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @ball.destroy
    head :no_content
  end

  def shake
    @answer = @ball.answers.sample
    render :shake
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
