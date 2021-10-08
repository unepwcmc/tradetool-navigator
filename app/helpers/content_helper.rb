module ContentHelper
  def content_base_path
    'config/locales'
  end

  def get_locale_content filename
    if filename != nil
      yaml = load_yaml("#{content_base_path}/#{filename}/#{locale}.yml")
      yaml["#{locale}"]["#{filename}"].to_json
    end
  end
  
  def get_content_value filename, partial, content_key
    if filename != nil
      yaml = load_yaml("#{content_base_path}/#{filename}/#{locale}.yml")
      yaml["#{locale}"]["#{filename}"]["#{partial}"]["#{content_key}"]
    end
  end

  def content_img_path 
    image_pack_tag 'hero-pattern-1.jpeg'
  end

  def twitter_card
    'summary_large_image'
  end

  def twitter_creator
    '@unepwcmc'
  end
end