class SignaturesController < ApplicationController
  def create
    @person = Person.find(params[:person_id])
    @signature = @person.signatures.create(signature_params)
    redirect_to person_path(@person)
  end

  private
  def signature_params
    params.require(:signature).permit(:signature_date, :editions, :initial_edition, :final_edition)
  end
end
