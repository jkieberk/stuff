class ListController < ApplicationController
  def todos
    #RUBY CODE
    @todos = [
      'Get Creamer',
      'Clean Coffee Pot',
      'Warm the water'

    ]
  end
end
