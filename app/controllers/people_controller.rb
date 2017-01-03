class PeopleController < ApplicationController
  def index
    @msg = 'Person data.'
    @people = Person.all
  end

  def show
    @msg = 'Index data.'
    @person = Person.find(params[:id])
  end

  def add
    @msg = 'Add new data.'
    @person = Person.new
  end

  def create
    person = Person.create(person_params)
    redirect_to '/people'
  end

  private
  def person_params
    params.require(:person).permit(:name, :age, :mail)
  end
end
