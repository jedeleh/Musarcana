class MusarcanaController < ApplicationController
  def dashboard
    @has_grid = false

    respond_to do |format|
      format.html
    end
  end

end
