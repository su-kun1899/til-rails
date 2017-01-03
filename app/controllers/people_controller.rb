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
    Person.create(person_params)
    redirect_to '/people'
  end

  def edit
    @msg = 'Edit data. [id =' + params[:id] + ']'
    @person = Person.find(params[:id])
  end

  def update
    person = Person.find(params[:id])
    person.update(person_params)
    redirect_to '/people'
  end

  private
  def person_params
    params.require(:person).permit(:name, :age, :mail)
  end
end
