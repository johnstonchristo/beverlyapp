class JournalsController < ApplicationController
before_action :authorise, only: [:new, :create]

  def index
  end

  def show
    @journal = Journal.find_by(id: params["id"])
    # irb
  end

  def new
    @journal = Journal.new
  end

  def edit
  end

  def create
    journal = Journal.new(journal_params)
    journal.user = @current_user
    journal.save

    redirect_to journal_path(journal)
  end

private

def journal_params
  params.require(:journal).permit(:journal_title, :number_of_entries, :time_period, :word_count)
end

  def authorise
    unless @current_user
  flash[:error] = "You need to be logged in for that"
  redirect_to "/login"

    end
  end

end
