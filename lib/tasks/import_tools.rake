require 'csv'

namespace :import do
  desc "Import CSV data into database"
  task :tools, [:csv_file] => [:environment] do |t, args|
    import_csv_file(args.csv_file)
    puts "CSV successfully imported"
  end

  def import_csv_file file
    Tool.import file, 'utf-8'
  end
end