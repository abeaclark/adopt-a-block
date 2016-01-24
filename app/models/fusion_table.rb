require 'google/apis/drive_v2'
require 'httparty'
require 'json'

class FusionTable < ActiveRecord::Base
  include HTTParty

  def self.update_row_name(block_number, name)
    row_id_response = HTTParty.post("https://www.googleapis.com/fusiontables/v1/query?sql=select+ROWID+from+1YA-dwtjMLXiwSdgkL3ByvU_iRzi_h5coSqovNttM+where+Block_number%3D'#{block_number}'&hdrs=false&typed=true&key=#{ENV['GOOGLE_api_key']}").body
    row_id = JSON.parse(row_id_response)["rows"][0][0]
    response = HTTParty.post("https://www.googleapis.com/fusiontables/v1/query?sql=update+1YA-dwtjMLXiwSdgkL3ByvU_iRzi_h5coSqovNttM+set+Name%3D'test'+where+ROWID%3D'#{row_id}'&hdrs=false&typed=true&access_token=#{ENV['TEMPORARY_AUTH_TOKEN']}")
    # p response
  end

  # def update_row_link(name)

  # end

end


# SELECT STATEMENT
# SELECT ROWID
# FROM 1YA-dwtjMLXiwSdgkL3ByvU_iRzi_h5coSqovNttM
# WHERE Block_number=0001

# POST https://www.googleapis.com/fusiontables/v1/query?sql=select+ROWID+from+1YA-dwtjMLXiwSdgkL3ByvU_iRzi_h5coSqovNttM+where+Block_number%3D0001&hdrs=false&typed=true&key={YOUR_API_KEY}

# get row ID
# response[rows][0][0]

#Update based on rowID
# POST https://www.googleapis.com/fusiontables/v1/query?sql=update+1YA-dwtjMLXiwSdgkL3ByvU_iRzi_h5coSqovNttM+set+Name%3D'test'+where+ROWID%3D'1'&hdrs=false&typed=true&key={YOUR_API_KEY}
