class ActorsController < ApplicationController
  def all_actors
    @actors = Actor.all

    render({ :template => "actor_template/actor"})
  end

  def actor_details
    @actor = Actor.find(params[:id])

    render({ :template => "actor_template/actor_details"})
  end
end
