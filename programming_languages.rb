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
  
      puts new_hash

    
end
reformat_languages({
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
})