def nyc_pigeon_organizer(data)
  hash = {}
  data.each do |category, attr|
    attr.each do |desc, names|
      names.each do |name|
        hash[name] = {}
      end
    end
  end
  data.each do |category, attr|
    attr.each do |desc, names|
      names.each do |name|
        if hash[name][category] #category found add desc
          hash[name][category] << desc
        else #add {category => [desc]}
          hash[name][category] = [desc]
        end
      end
    end
  end
  hash
end