class LinksController < ApplicationController
  helper_method :links

  private
  def index
    @links ||= Link.all
  end
end
