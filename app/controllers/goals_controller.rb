class GoalsController < ApplicationController
  def create
    @person = Person.find(params[:person_id])
    @goal = @person.goals.create(goal_params)
    redirect_to person_path(@person)
  end

  private
  def goal_params
    params.require(:goal).permit( :quota,
                                  :quota_value,
                                  :journal,
                                  :journal_value,
                                  :journal_sum,
                                  :first_campaign,
                                  :first_campaign_value,
                                  :first_campaign_sum,
                                  :second_campaign,
                                  :second_campaign_value,
                                  :second_campaign_sum)
  end
end
