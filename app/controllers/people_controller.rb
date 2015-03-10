class PeopleController < ApplicationController
  respond_to :xml, :json

  def index
    @people = Person.all
    respond_with(@people)
  end

  def show
    @person = Person.find(params[:id])
    respond_with(@person)
  end

  def create
    @person = Person.create(:prefix => params[:prefix], :first_name => params[:first_name], :middle_name => params[:middle_name], :last_name => params[:last_name], :suffix => params[:suffix], :email => params[:email], :phone => params[:phone])
    respond_with(@person)
  end
end
