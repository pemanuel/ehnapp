require 'csv'

class Patient < ActiveRecord::Base
  belongs_to :worklist
  has_many :worlists
  
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Patient.create! row.to_hash
    end
  end
end
