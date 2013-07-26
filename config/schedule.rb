

set :output, "#{path}/log/cron.log"

every 2.minutes do
  rake "headlines --trace", :environment => :development
  rake "mlb_headlines --trace", :environment => :development
  rake "nba_headlines --trace", :environment => :development
  rake "nfl_headlines --trace", :environment => :development
  rake "nhl_headlines --trace", :environment => :development
  rake "ncaa_mens_bb_headlines --trace", :environment => :development
  rake "ncaa_mens_fb_headlines --trace", :environment => :development
  rake "si_headlines --trace", :environment => :development
end