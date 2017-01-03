class PeopleController < ApplicationController
  def index
    @msg = 'Person data.'
    @people = Person.all
  end

  def show
    @msg = 'Index data.'
    @person = Person.find(params[:id])
  end
end
