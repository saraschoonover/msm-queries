class DirectorsController < ApplicationController
  def all_directors
    @directors = Director.all
    render({ :template => "director_templates/director"})
  end

  def youngest
    
    render({ :template => "director_templates/youngest"})
  end

  def eldest

    render({ :template => "director_templates/eldest"})
  end
end
