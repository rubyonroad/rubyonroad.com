class HomeController < ApplicationController
  skip_before_action :verify_authenticity_token
  layout false
  def index
  end

  def subscribe
    subscriber = Subscriber.new subscribe_params
    if subscriber.save
      render json: subscriber
    else
      render status: 422, json: {errors: subscriber.errors.full_messages}
    end
  end

  private

  def subscribe_params
    params.permit(:email)
  end
end
