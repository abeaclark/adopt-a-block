class User < ActiveRecord::Base
  has_and_belongs_to_many :blocks

  def self.from_omniauth(auth_hash)
    auth_hash
    user = find_or_create_by(unique_id: auth_hash['uid'])
    user.full_name = auth_hash['info']['name']
    user.avatar_url = auth_hash['info']['image']
    user.profile_url = auth_hash['info']['urls']['Google']
    user.save!
    p user
  end


end
