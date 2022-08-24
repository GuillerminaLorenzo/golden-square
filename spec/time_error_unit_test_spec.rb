require 'time_error_unit_test'


RSpec.describe TimeError do
    it "returns the difference between server time and computer time" do
      requester = double(:requester)
      time_error = TimeError.new(requester)
      allow(requester).to receive(:get).with(URI("https://worldtimeapi.org/api/ip"))
      .and_return('{"abbreviation":"BST","client_ip":"152.37.84.190","datetime":"2022-08-19T13:57:04.582410+01:00",
                  "day_of_week":5,"day_of_year":231,"dst":true,"dst_from":"2022-03-27T01:00:00+00:00","dst_offset":3600,
                  "dst_until":"2022-10-30T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1660913824,
                  "utc_datetime":"2022-08-19T12:57:04.582410+00:00","utc_offset":"+01:00","week_number":33}') 
      expect(time_error.error(Time.new(2022, 8, 19, 12, 57, 4, "+00:00"))).to eq 0.58241
    end
  end 