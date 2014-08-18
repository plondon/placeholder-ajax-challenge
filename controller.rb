require 'sinatra'

get '/measurements' do
	@m = params[:measurements].gsub('x', ' ').split(' ')

	@width = @m[0]
	@height = @m[1]

	return { width: @width, height: @height }

	erb :index
end