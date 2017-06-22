get '/' do
  @urls = Url.all.reverse
  erb :"static/index"
end



post '/shorten_link' do
	if params[:long].include?("https://") == true
		u = Url.new(long_url: params[:long],count: 0)
	else
		v = "https://" + params[:long]
		u = Url.new(long_url: v,count: 0)
	end
  
	u.save
	if u.save
		u.shorten
		return u.to_json
		# redirect '/'
	else
	end
end

# get '/:short' do
# 	# params[:short]
# 	where(:short_url)	
# 	redirect '/:short[]'
    
# end

get '/:short_url' do
  # redirect to appropriate "long" URL
  u =  Url.find_by(short_url: params[:short_url])
  redirect u.long_url
end

