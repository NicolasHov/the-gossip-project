require 'test_helper'

class MoussaillonsSignupTest < ActionDispatch::IntegrationTest

  test "invalid signup information" do
   get '/moussaillons/new'
   assert_no_difference 'Moussaillon.count' do
     post moussaillons_path, params: { moussaillon: { username:  "",
                                        mail: "user@invalid",
                                        password:              "foo",
                                        password_confirmation: "bar" } }
   end
   assert_template 'moussaillons/new'
 end

 test "valid signup information" do
   get '/moussaillons/new'
   assert_difference 'Moussaillon.count', 1 do
     post moussaillons_path, params: { moussaillon: { username:  "Example User",
                                        mail: "user@example.com",
                                        password:              "password",
                                        password_confirmation: "password" } }
   end
   follow_redirect!
   assert_template 'moussaillons/show'
 end
end
