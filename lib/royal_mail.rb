require "royal_mail/version"
require "royal_mail/tracker"
require "royal_mail/tracker/request"
require "royal_mail/tracker/response"
require "royal_mail/tracker/detail"
require "royal_mail/tracker/status_map"

module RoyalMail
  TRACKING_NUMBER_FORMAT = /\A[A-Z]{2}\d{9}GB\z/i

  class << self
    def tracking_number?(tracking_number)
      !!(tracking_number.to_s =~ TRACKING_NUMBER_FORMAT)
    end
  end
end
