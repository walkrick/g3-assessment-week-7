require 'sinatra/base'
require 'gschool_database_connection'

require './lib/country_list'

class Application < Sinatra::Application

  def initialize
    super
  end

  get '/' do
    erb :index
  end

  get '/continents' do
    all_continents = CountryList.new.continents
    erb :continents, locals: { continents: all_continents }
  end

  get '/continents/:continent_name' do
    list_of_countries = CountryList.new.countries_for_continent(params[:continent_name])
    erb :countries, locals: { countries: list_of_countries, continent: params[:continent_name] }
  end

end