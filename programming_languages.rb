def reformat_languages(languages)
  # your code here
  new_hash ={}
  languages.each do |style , lang |
    
    lang.each do | key , lang_data |

      if(new_hash[key]==nil)
      new_hash[key] = { :type => lang_data[:type], :style => [lang_data[:style]]  }
      else
          new_hash[key][:style] << lang_data[:style]
      end
    end
  end
      new_hash
end
