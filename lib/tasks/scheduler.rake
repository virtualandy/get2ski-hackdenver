desc "This task is called by the Heroku cron add-on"
task :update_stations => :environment do
    puts "Updating stations..."
    CDOTParser.generate_weather_stations
    puts "done."
  end
end