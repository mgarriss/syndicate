class EveGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)
  
  argument :eve_table_name, :type => :string, :banner => "mapRegions"
  
  route "resource :#{file_name.pluralize}"
  
  def copy_unit_test_file
    template "unit_test.rb", "test/units/#{file_name}_test.rb"
  end
  
  def copy_functional_test_file
    template "controller_test.rb", "test/functionals/#{file_name.pluralize}_controller_test.rb"
  end
  
  def copy_model_file
    template "model.rb", "app/models/#{file_name}.rb"
  end
  
  def copy_index_file
    template "index.html.haml", "app/views/#{file_name.pluralize}/index.html.haml"
  end
  
  def create_root_folder
    empty_directory File.join("app/views", file_name.pluralize)
  end
  
  def copy_index_partial_file
    template "_index.html.haml", "app/views/#{file_name.pluralize}/_index.html.haml"
  end
  
  def copy_show_file
    template "show.html.haml", "app/views/#{file_name.pluralize}/show.html.haml"
  end
  
  def copy_show_partial_file
    template "_show.html.haml", "app/views/#{file_name.pluralize}/_#{file_name}.html.haml"
  end
end

module EveSql
  def self.primary_key table_name
    table_name.sub(/.{3}/,'').scan(/[A-Z][a-z]+/)[0].downcase + "ID"
  end
  def self.name_column table_name
    table_name.sub(/.{3}/,'').scan(/[A-Z][a-z]+/)[0].downcase + "Name"
  end
end
