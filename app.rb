require 'sinatra/base'


# Create a route that responds to a POST request at `/team`
# Have the form send a POST request to this route.
# Upon submission, pass the submitted data to the `team.erb` template.

class App < Sinatra::Base
    get '/' do
        erb :index
    end

    get '/newteam' do  #newteam.erb's form POSTS to /team
        erb :newteam
    end

    get '/team' do
        erb :team
    end

    post '/team' do
        puts params
        erb :team
    end

end
