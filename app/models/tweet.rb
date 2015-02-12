class Tweet < ActiveRecord::Base
  #attr_accessible :messagge, :url, :user

  client = Twitter::REST::Client.new do |config|
   config.consumer_key        = "G9rECMRB1LBZHG88JlR5rdLm6"
   config.consumer_secret     = "kNq4IUKX5WZHrRhjsvNds1C3mCmHqwraFZMqA3OrtcKYrjcbBy"
   config.access_token        = "2786557096-QURkPzCOhB7i8DqMfsBvNjGUj1OdqdXLncMClW6"
   config.access_token_secret = "Zzk9ecpDAlma7Fyhg1zc9j9Z4LBXrTF7yI2gIa4F7Vxwu"
  end
  

    def read_message
	  return "No hay usuario" if self.user.blank?
	  client.user_timeline(self.user).first.text
    end

end
