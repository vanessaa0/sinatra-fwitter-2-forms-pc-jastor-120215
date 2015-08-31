# MVC Review

This project reflects the first iteration of the Fwitter project: a Sinatra backed MVC application. 

+ `tweet.rb`:
  * This file is the model. The model in MVC is the portion of the application that handles all the data processing. In this case, it's responsible for creating all our tweets
  * tweets are initialized with a status and username
  * Every tweet is added to an `ALL_TWEETS` array on initialization

+ `application_controller.rb`:
  * This file is the big communicator of the application, the controller. The controller in MVC is the portion that gets the information from the user, hands it off to the model to process, and delivers it back to the view. All your routes are defined in the controller.
  * we create a `get` request that displays all the tweets created in the route in the view (index.erb)

+ `index.erb`:
  * This file is our view, and displays all the information. 
  * We have access to all the tweets through the `@tweets` attribute because of the controller. 
  * We use ERB tags `<%= %>` to display ruby code in the view
  * Iterate over `@tweets` array to display each individual tweet

+ `Gemfile`
  * This file controls all the gems we use in this application, including Sinatra and pry.

+ `config.ru`:
  * This file is what is used to actually run our app and display it in the browser

+ `Public`:
  * This directory includes all the extra assets like CSS, JS, and images

+ In terminal, run `rackup` to start a localhost server.
