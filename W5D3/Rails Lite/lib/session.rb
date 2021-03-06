require 'json'

class Session
  # find the cookie for this app
  # deserialize the cookie into a hash
  def initialize(req)
    cookie = req.env["rack.request.cookie_hash"]["_rails_lite_app"]

    if cookie
      @dese = JSON.parse(cookie)
    else
      @dese = {}
    end
  end

  def [](key)
    @dese[key]
  end

  def []=(key, val)
    @dese[key] = val
  end

  # serialize the hash into json and save in a cookie
  # add to the responses cookies
  def store_session(res)
    p @dese
    p res
    if @dess
      res.set_cookie("_rails_lite_app", cookie)
    else

    end
  end
end
