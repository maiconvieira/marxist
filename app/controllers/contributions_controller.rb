class ContributionsController < ApplicationController
  def create
    @person = Person.find(params[:person_id])
    @contribution = @person.contributions.create(contribution_params)
    redirect_to person_path(@person)
  end

  private
  def contribution_params
    params.require(:contribution).permit( :school,
                                          :school_value,
                                          :school_sum,
                                          :congress,
                                          :congress_value,
                                          :congress_sum)
  end
end
