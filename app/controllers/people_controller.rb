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
  end

  protect_from_forgery

  def create
    person = Person.create(
        name: params['name'],
        age: params['age'],
        mail: params['mail']
    )
    redirect_to '/people'
  end
end
