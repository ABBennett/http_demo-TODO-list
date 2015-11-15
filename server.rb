require "sinatra"

set :public_folder, File.join(File.dirname(__FILE__), "public")

get "/hello" do
  "<p>Hello, world! The current time is #{Time.now}.</p>"
end

get "/tasks" do
  @tasks = ["pay bills", "buy milk", "learn Ruby", "Learn more Ruby"]
  erb :index
end
