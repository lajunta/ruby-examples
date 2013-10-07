require 'mycloud'

  hsh={}
  hsh[:access_token] = 'f295da185871aad0d26f3fff292fbe032910d0ac'
  hsh[:secret_token] = 'e05baa1f7f3df5cb2bf8353eacb52a2969beb89b'
  hsh[:upload_token_uri] = "http://127.0.0.1:3000/api/upload_token"
  hsh[:unlink_token_uri] = "http://127.0.0.1:3000/api/unlink_token"

  hshs={}
  feedback = Mycloud.get_upload_token(hsh)
  hshs[:upload_token] = feedback['upload_token']
  hshs[:sky_name] = "somachi"
  hshs[:file_path] = "mycloud_test.rb"
  hshs[:tags] = "文件"
  hshs[:upload_file_uri] = "http://127.0.0.1:3000/api/upload_file"
  #feedback=Mycloud.upload_file(hshs)
  #puts feedback['uuid']


  hsh_unlink={}
  feedback = Mycloud.get_unlink_token(hsh)
  hsh_unlink[:unlink_token] = feedback['unlink_token']
  hsh_unlink[:file_id] = '11904a7f254473b78fc4f6d1521dca8984fa00bd'
  hsh_unlink[:unlink_file_uri] = "http://127.0.0.1:3000/api/unlink_file"


  puts Mycloud.get_unlink_token(hsh)
  puts Mycloud.unlink_file(hsh_unlink)
