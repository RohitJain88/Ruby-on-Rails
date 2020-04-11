class QuestionController < ApplicationController
  include CurrentCart
  before_action :set_cart
  skip_before_action :authorize

  def index
  end
end
