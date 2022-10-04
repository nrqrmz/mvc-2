class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    @members = %w[alex avelina andrea andrew anthony amanda boris bob bethany betty billy charly cindy catherine collin celina].sort

    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member]) }
    end
  end
end
