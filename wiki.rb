require  "sinatra"
require "./test.rb"
#set :bind, "0.0.0.0"  configuring to accept requests from any (remote) computer:

# class HiSinatra < Sinatra::Base
# end

#how to chnge server in sinatra


get "/html/:name" do   #req.params.name  here, called params
    name = params[:name]
    response_text = page_content(name)
    response_text   #implicit response.send() 
end

get "/static/*" do
    "static route"
    #how to get the root path dynamically?
    root_path = "/Users/maiya/Desktop/code-assignments/treehouse-sinatra/"
    #how to pull the actual url string, in order to parse it? instead of params or query?
    #how to get this dynamically from the url entered: 
    url_path = 'styles/styles.css'
    file_path = root_path + url_path
    file_text = File.read(root_path + url_path)
    p "**********file_text: #{file_text}"
    file_text    
end

get '/' do
   erb :welcome #the file name, without the .erb extension  # automatically looks for it in the 'views' folder? any way or reason to re-set?    #implicitly becomes response.send()
end


