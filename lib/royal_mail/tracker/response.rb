require 'nokogiri'

module RoyalMail
  class Tracker::Response
    attr_reader :html

    DETAILS_PATH = '//*[@id="bt-tracked-track-trace-form"]/div/div/div/div[1]/table/tbody/tr'
    ERROR_PATH = '//*[@id="bt-tracked-track-trace-form"]/div/div/div/div[1]/div[5]/text()'

    def initialize(body)
      @html = Nokogiri::HTML(body)
    end

    def tracker
      Tracker.new(tracking_number, details.reverse)
    end

    private

    def tracking_number
      el = @html.at('input[@name="tracking_number"]')
      el ? el.attr(:value).to_s.strip : nil
    end

    def details
      html.xpath(DETAILS_PATH).map do |tr|
        date, time, message, location = tr.css('td').map(&:content).map(&:strip)
        datetime = DateTime.parse([date, time].join(' '))
        Tracker::Detail.new(datetime, message, location)
      end
    end
  end
end
