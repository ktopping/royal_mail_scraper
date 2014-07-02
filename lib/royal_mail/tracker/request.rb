require 'net/http'

module RoyalMail
  class Tracker::Request < Struct.new(:tracking_number)
    REQUEST_URI = URI('http://www.royalmail.com/trackdetails')
    TIMEOUT = 10

    def execute
      params = { tracking_number: tracking_number }

      req = Net::HTTP::Post.new(REQUEST_URI.request_uri)
      req.form_data = params

      http = Net::HTTP.new(REQUEST_URI.host, REQUEST_URI.port)
      http.open_timeout = TIMEOUT
      http.read_timeout = TIMEOUT

      res = http.request(req)

      Tracker::Response.new(res.body)
    end
  end
end
