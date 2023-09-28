class DirectorsController < ApplicationController
  def all_directors
    @directors = Director.all
    render({ :template => "director_templates/director"})
  end

  def youngest
    @youngest = Director.all.order(dob: :desc)
    @young = @youngest[0]
    render({ :template => "director_templates/youngest"})
  end

  def eldest
    @eldest = Director.all.where.not({:dob => nil}).order(dob: :asc)
    @old = @eldest[0]
    render({ :template => "director_templates/eldest"})
  end

  def director_details
    @director = Director.find(params[:id])
    @filmography = Movie.where(director_id: @director.id)
    render({ :template => "director_templates/director_details"})
  end
end
