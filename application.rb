require 'sinatra/base'
require 'gschool_database_connection'

require './lib/country_list'
require './lib/messages'


class Application < Sinatra::Application
  enable :sessions


  def initialize
    super
    @database_connection = Messages.new(GschoolDatabaseConnection::DatabaseConnection.establish(ENV['RACK_ENV']))
  end

  get '/' do
    erb :index
  end

  post '/'do
    @database_connection.create(params[:username], params[:message])
    # flash[:success] = "Thank you for me"
    redirect "/"
    # erb :index
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