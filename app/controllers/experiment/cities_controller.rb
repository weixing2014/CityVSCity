class Experiment::CitiesController < ApplicationController
  def index

  end

  def city_info
    city_id = params[:select_id]
    city, country = City.extract_city_and_country(city_id: city_id)
    render json: {
        'html' => render_to_string(partial: 'city_info', locals:{city: city, country: country})
    }
  end

  def city_options
    city_options = City.searchable_city_and_country
    render json: city_options.to_json
  end

  def create

  end

  def new

  end

  def edit

  end

  def update

  end

  def create

  end

  def delete

  end

  def destroy

  end
end
