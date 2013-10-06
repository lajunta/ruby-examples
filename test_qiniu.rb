require 'qiniu-rs'
require 'securerandom'
Qiniu::RS.establish_connection! :access_key => 'access_key', 
  :secret_key => 'secret_key'

#  :expires_in         => expires_in_seconds,
#  :callback_url       => callback_url,                            
#  :callback_body      => callback_body,                                                           
#  :callback_body_type => callback_body_type,
#  :customer           => end_user_id,                                                                                     :escape             => allow_upload_callback_api,
#  :async_options      => async_callback_api_commands,                                                                     :return_body        => custom_response_body

def upload_token
  Qiniu::RS.generate_upload_token :scope => 'somachi'
end

def uuid
  SecureRandom.hex(16)
end
file_path = '/home/zxy/aa.mp4'

puts Qiniu::RS.upload_file :uptoken => upload_token,
  :file               => file_path,
  :bucket             => 'somachi',
  :key                => uuid,
  :note               => 'test for qiniu in ruby',
  :enable_crc32_check => false
#  :rotate             => auto_rotate
#  :mime_type          => file_mime_type,
#  :callback_params    => callback_params,
