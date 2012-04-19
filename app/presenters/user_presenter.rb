class UserPresenter
  def initialize(user, template)
    @user = user
    @template = template
  end
  
  def h
    @template
  end
  
  def avatar
    h.link_to_if @user.url.present?, h.image_tag("avatars/#{avatar_name}", class: "avatar"), @user.url
  end
  
  private
    def avatar_name
      if @user.avatar_image_name.present?
        @user.avatar_image_name
      else
        "default.png"
      end
    end
end
