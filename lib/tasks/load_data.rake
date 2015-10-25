require 'csv'

desc "Load Movies data in movies table"
task load_data: :environment do
  def get_parameter_hash(row)
    {
      title: row[0],
      release_year: row[1],
      location: row[2],
      fun_facts: row[3],
      production: row[4],
      distributor: row[5],
      director: row[6],
      writer: row[7],
      actor1: row[8],
      actor2: row[9],
      actor3: row[10]
    }
  end

  CSV.foreach(File.join(Rails.root.join('lib', 'data', 'Film_Locations_in_San_Francisco.csv')), { headers: true } ) do |row|
    Movie.create!(get_parameter_hash(row))
  end
end
