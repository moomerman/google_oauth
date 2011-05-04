# OAuth2 Google Data client library for Ruby

## h2. Install the gem

gem install google_oauth

## h2. Authorization

    client = GoogleOAuth::Client.new(
      :client_id => 'YOUR_CLIENT_ID', 
      :client_secret => 'YOUR_CLIENT_SECRET', 
      :redirect => 'YOUR_REDIRECT_URI',
    )

    redirect_to client.authorization_url

At this point the client is redirected to the Google login page.  If they authorize your application then Google will return to your
redirect URL with a <code>code</code> parameter.

    token = client.authorize(:code => params[:code])
    
You now have a valid token that you can store for future requests.  You can initialize the client with this token if you already have it:

    client = GoogleOAuth::Client.new(
      :client_id => 'YOUR_CLIENT_ID', 
      :client_secret => 'YOUR_CLIENT_SECRET', 
      :token => 'USER_TOKEN'
    )

## Working with Calendars

The Google Calendar API supports the jsonc format so that is what this library uses.  Check out the [Google Documentation](http://code.google.com/apis/calendar/data/2.0/developers_guide_protocol.html) to see what properties are available.

Here is an example that gets the users first calendar and loops over all the events:

    calendar = client.own_calendars.items.first

    client.events(calendar.eventFeedLink).items.each do |event|
      puts event.title
    end