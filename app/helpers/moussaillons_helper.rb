module MoussaillonsHelper

    # Returns the Gravatar for the given user.
 def gravatar_for(moussaillon, size: 80)
   gravatar_id = Digest::MD5::hexdigest(moussaillon.mail.downcase)
   gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
   image_tag(gravatar_url, alt: moussaillon.username, class: "gravatar")
 end
  
end
