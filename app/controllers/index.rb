get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end
 
post '/grandma' do
  input = params[:user_input]
  # if input == input.upcase
  #   redirect to('/?grandma=You so crazy! Hack...hack...hack....ugggh.')
  # else
  #   redirect to('/?grandma=Speak Up, kiddo!')
  # end
  input == input.upcase ? "<p class='grandma_response'>Yes, upcase</p>" : "<p class='grandma_response'>No, not upcase.</p>"
end
