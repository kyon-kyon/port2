class ThinksController < ApplicationController
  def index
    @user = current_user
    @think = Think.new
    @thinks = current_user.think.all
  end
end
