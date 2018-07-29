namespace :app do

  desc 'clear app'
  task reset: :environment do
    if Rails.env.production?
      raise "===\nI'm sorry, I can't do that.\n(You're asking me to drop your production database.)\n==="
    else
      Rake::Task['tmp:clear'].execute
      Rake::Task['log:clear'].execute
      Rake::Task['postgres:destroy_sessions'].execute
      Rake::Task['tmp:create'].execute
      Rake::Task['db:drop'].execute
      Rake::Task['db:create'].execute
      Rake::Task['db:migrate'].execute
      Rake::Task['db:seed'].execute
    end
  end

end
