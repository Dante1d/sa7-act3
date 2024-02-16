require 'csv'

def csv_to_hashes(csv_file)
  csv_data = CSV.read(csv_file, headers: true)
  csv_data.map(&:to_hash)
end

file_path = 'data.csv'
parsed_data = csv_to_hashes(file_path)
puts parsed_data
