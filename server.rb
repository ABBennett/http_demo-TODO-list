require "sinatra"

set :public_folder, File.join(File.dirname(__FILE__), "public")

get "/hello" do
  "<p>Hello, world! The current time is #{Time.now}.</p>"
end
get "/tasks" do
 # The three quotes below is simply to treat everything below as a string
 '''
 <!DOCTYPE html>
 <html>
   <head>
     <title>Basic HTML Page</title>
     <link rel="stylesheet" href="home.css">
   </head>

   <body>
     <h1>TODO list</h1>

     <ul>
       <li>pay bills</li>
       <li>buy milk</li>
       <li>learn Ruby</li>
     </ul>
   </body>
 </html>
 '''
end
