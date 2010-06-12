APP_CONFIG['admins'].each do |admin|
  Admin.create(admin) rescue (puts "not adding: #{admin['email']}")
end

def load_eve_sql_file file
  yaml = YAML.load_file(File.join(Rails.root,'config','database.yml'))
  db = yaml[Rails.env]
  if db['password'].blank?
    `mysql #{db['database']} -u#{db['username']} < #{file}`
  else
    `mysql #{db['database']} -u#{db['username']} -p#{db['password']} < #{file}`
  end
end

Dir[File.join(Rails.root,'db','eve',APP_CONFIG['eve_version']) + "/*.sql"].each do |file|
  puts "loading: #{File.basename(file)}"
  load_eve_sql_file file
end
