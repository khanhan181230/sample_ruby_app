module UsersHelper
  include Digest

  DEFINE_GRAVATAR_SIZE = 80

  def gravatar_for(user, options = { size: DEFINE_GRAVATAR_SIZE })
    size = options[:size]
    gravatar_id = MD5.hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
