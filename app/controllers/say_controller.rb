class SayController < ApplicationController
  before_filter :authenticate_user!

  def hello
    @time = Time.now
  end

  def goodbye
  end
end
