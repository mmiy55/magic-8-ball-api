class Api::V1::BallsController < Api::V1::BaseController
  def index
    @balls = policy_scope(Ball)
  end
end
