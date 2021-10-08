module ContentHelper
  def content_base_path
    'config/locales'
  end

  def get_locale_content filename
    if(filename != nil)
      yaml = load_yaml("#{content_base_path}/#{filename}/#{locale}.yml")
      yaml["#{locale}"]["#{filename}"].to_json
    end
  end
  
  def get_content_value filename, partial, content_key
    if(filename != nil)
      yaml = load_yaml("#{content_base_path}/#{filename}/#{locale}.yml")
      yaml["#{locale}"]["#{filename}"]["#{partial}"]["#{content_key}"]
    end
  end
end