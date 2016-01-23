require 'fusion_tables'

class FusionTable < ActiveRecord::Base


  def self.new_connection
    @ft = GData::Client::FusionTables.new
    @ft.clientlogin(ENV['GOOGLE_username'], ENV['GOOGLE_password'])
    @ft.set_api_key(ENV['GOOGLE_private_key'])
  end

  # def self.load_table
  #   ENV['FUSION_TABLE_ID']
  # end

end
