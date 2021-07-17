require_relative '../models/user'

class UserRoutes < Sinatra::Application
	before do 
		content_type :json
	end

	post 'users/register' do
		user = User.new(params)
		if user.save
			{ user_id: user.id, message: 'User id successfully saved!'}.to_json
		else
			{ errors: user.errors, message: 'There is validation errors' }.to_json
		end
	end 

end
