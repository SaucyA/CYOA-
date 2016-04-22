require 'sinatra'

get '/' do
	@choice_1 = "Choose Path"
	@choice_2 = "Graduate"
	@choice_3 = "Dropout"
	erb :index
end

post '/part_two' do
	if "Dropout" == params[:@choice]
	@title = "You may want to rethink!"
		
		@choice_1 = "Choose whats next"
		@choice_2 = "Get G.E.D."
		@choice_3 = "Live With Your parents"
		erb :part_two
	elsif "Graduate" == params[:@choice]
	then	@title = "Good Choice! Now what's next in your academic endeavors?"
		@choice_1 = "Community College"
		@choice_2 = "4-year university"
		@choice_3 = "_________ School"
		erb :part_two
	end
end
