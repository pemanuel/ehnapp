class Worklist < ActiveRecord::Base
  has_many :patients
  
  def self.import(file)
  CSV.foreach(file.path, headers: true) do |row|
    Worklist.create! row.to_hash
  end
end
end
