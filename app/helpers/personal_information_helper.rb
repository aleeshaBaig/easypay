module PersonalInformationHelper

  def user_avatar user
    if user.image.present?
      image_tag user.image_url :thumbnail
    else
      # Assuming you have a default.jpg in your assets folder
      image_tag 'logo.jpg'
    end
  end
end
