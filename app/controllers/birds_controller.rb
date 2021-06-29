class BirdsController < ApplicationController
  def index
    #birds can just be local variable, as it's just going to be an API endpoint
    birds = Bird.all
    render json: { birds: @birds, messages: ["Hello Birds", "Goodbye Birds"] }
  end

  def show
    bird = Bird.find_by(id: params[:id])
    if bird
      render json: { id: bird.id, name: bird.name, species: bird.species }
    else
      render json: { message: 'Bird not found' }
    end
  end
  
end
