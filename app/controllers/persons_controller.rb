class PersonsController < ApplicationController
  def show
    persons = Person.all.pluck(:firstname).sample(3)
    @bio = Person.find_by(firstname: persons.first).bio
    @password = persons.join('-')
  end
end