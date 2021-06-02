class PersonsController < ApplicationController
  def show
    @names = Person.all.pluck(:firstname).sample(3)
    @bio = Person.find_by(firstname: @names.first).bio
    @password = @names.join('-')
  end
end