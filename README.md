# Sinatra Fwitter 2 -  Forms

## Objectives

1. Understand the difference between a "get" and a "post" request. 
2. Create a form with a method and action.
3. Use data submitted through a form in `params` to instantiate new instances of objects

## Overview

Last time in Fwitter, we created the basic layout of our Model-View-Controller file structure. Today, let's add a form so that users can dynamically create new tweets. 

## Instructions

### Setup

Fork and clone this repository to get started. You'll notice in our index page we've added a link to the [Bootstrap](http://getbootstrap.com/) stylesheet - an great CSS library for incorporating some layout and structure very quickly. 

*Note: For this lab, make sure to start your server using `rackup` instead of `shotgun`. This means that you'll have to restart your server every time you update your code, but otherwise your tweets won't display properly on the index page.*

### Creating a Form

The first thing we'll need for our users to be able to post their own tweets is a form. In the `views` directory, create a new file called `tweet.erb`. We'll also need to add a route to our application controller which will render the form. Make a new route for `get '/tweet'` which renders our new file. 

```ruby
	get '/tweet' do
	  erb :tweet
	end
```

Let's build out a form in our `tweet.erb` file. It should have an action of `/tweet` and a method of `post`. 

```erb
<!DOCTYPE html>
<html>
  <head>
    <title>Fwitter</title>
  </head>
  <body> 
      <h1>Add a tweet</h1>
      <form action="/tweet" method="POST">

      </form>

  </body>
</html>
```
Our form needs two inputs - one for `username` and one for `status`. We'll use a type of `text` for each one, as well as `name`. The `name` attribute is very important - this will be the key in the `params` hash when the user makes their post request. We can make the `name` attribute whatever we want, but `username` and `status` make sense. Finally, we also need a Submit button so users can submit the form.

```erb
<!DOCTYPE html>
<html>
  <head>
    <title>Fwitter</title>
  </head>
  <body> 
      <h1>Add a tweet</h1>
      <form action="/tweet" method="POST">
			<input type="text" name="username placeholder="Enter Your Username:">
			<input type="text" name="status" placeholder="Enter your Tweet!:" >
			<input type="Submit">
      </form>

  </body>
</html>
```

Awesome job. Press "Submit" and you should see Sinatra's cutest error: "Sinatra Doesn't Know This Ditty." This is because we haven't defined a `post "/tweet"` action in our controller. Let's fix this by defining one now. 

### Handling Our Post Request

Back in our application controller, let's create a route for `post '/tweet'` For now, just have it print out "Hello from the Tweet Post Request!"

```ruby
	get '/tweet' do
	  erb :tweet
	end
	
	post '/tweet' do
	  'Hello from the Tweet Post Request!'
	end
```
Restart your server using Rackup and submit your form again - you should see 'Hello from the Tweet Post Request' rendered in your browser. This let's us know that our form is connected properly into the application controller. Next, let's take a look at what `params` looks like. Add `puts params` into the post request. 

```ruby
	get '/tweet' do
	  erb :tweet
	end
	
	post '/tweet' do
	  put params
	  'Hello from the Tweet Post Request!'
	end
```
Restart the server again and resubmit the form. You should see the following in your terminal:

```bash
{"username" => "whatever_i_typed_in", "status" => "The other thing I typed in."}
```
Let's update our controller to create a new Tweet based on these values. 

```ruby
	post '/tweet' do
	  username = params[:username]
	  status = params[:status]
	  Tweet.new(username, status)
	end
```
This can be shortened to:

```ruby
	post '/tweet' do
	  Tweet.new(params[:username], params[:status])
	end
```
After, let's redirect back to the home page (if you're working from an older repository and have hard-coded tweets in your index route, go ahead and remove them now.

```ruby
  get '/' do
    @tweets = Tweet.all
    erb :index 
  end
  
  get '/tweet' do
    erb :tweet
  end
  
  post '/tweet' do
    Tweet.new(params[:username], params[:status])
    redirect '/'
  end
```

## Conclusion

Restart your server, and create some new tweet! You can now update your application dynamically based on user input. Awesome! In our next iteration of Fwitter, we'll add a database so that our tweets will persist permanently. 
