module GoogleOAuth
  class Client
    def calendars
      _get 'https://www.google.com/calendar/feeds/default/owncalendars/full', 'alt' => 'jsonc'
    end
  end
end