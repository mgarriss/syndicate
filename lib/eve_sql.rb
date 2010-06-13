module EveSql
  ROOT = File.join(Rails.root,'db','eve',APP_CONFIG['eve_version'])
  
  def self.load file
    load_absolute File.join(ROOT,file)
  end
    
  def self.load_absolute file
    yaml = YAML.load_file(File.join(Rails.root,'config','database.yml'))
    db = yaml[Rails.env]
    if db['password'].blank?
      `mysql #{db['database']} -u#{db['username']} < #{file}`
    else
      `mysql #{db['database']} -u#{db['username']} -p#{db['password']} < #{file}`
    end
  end
end
