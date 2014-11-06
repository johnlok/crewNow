namespace :update_races do
  desc "deletes any races that are before today's date"
  task update_races: :environment do
    puts "deleting old races..."
    Race.where("race_date < ?", Time.now).destroy_all
  end
end