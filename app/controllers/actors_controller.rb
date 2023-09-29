class ActorsController < ApplicationController
  def all_actors
    @actors = Actor.all

    render({ :template => "actor_template/actor"})
  end

  def actor_details
    @actor = Actor.find(params[:id])
    @personal_info = Actor.where({:id => @actor}).at(0)

    @characters = Character.where({:actor_id => @actor.id})
    
    render({ :template => "actor_template/actor_details"})
  end
end
