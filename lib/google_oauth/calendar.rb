module GoogleOAuth
  class Client
    def all_calendars
      _get_jsonc 'https://www.google.com/calendar/feeds/default/allcalendars/full'
    end
    
    def own_calendars
      _get_jsonc 'https://www.google.com/calendar/feeds/default/owncalendars/full'
    end
    
    def events(event_feed)
      _get_jsonc event_feed
    end
  end
end