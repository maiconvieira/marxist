class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def edit
  end
end
