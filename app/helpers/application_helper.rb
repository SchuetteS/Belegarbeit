module ApplicationHelper

  def user_avatar(user, size=40)
    if user.avatar.attached?
      user.avatar.variant(resize: "#{size}x#{size}!")
    else
      #use here default from gravatar
      gravatar_image_url(user.email, size: size)
    end
  end

end
