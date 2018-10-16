# your code goes here
def begins_with_r(collection)
  thecheck = collection.any? do |element|
    element[0] != "r"
  end
  return !thecheck
end

def contain_a(collection)
  collection.select do |element|
    element.include?("a")
  end
end

def first_wa(collection)
  collection.find do |element|
    element[0..1] == "wa"
  end
end

def remove_non_strings(collection)
  collection.select do |element|
    element.is_a? String
  end
end

def count_elements(collection)
  returnarray = []
  collection.each do |element|
    returnarray << {:name => element[:name], :count => collection.count(element)}
  end
  returnarray = returnarray.uniq
  return returnarray
end

def merge_data(keys, data)
  returnarray = []
  data.each do |data_object|
    data_object.each do |person, data|
      theelement = {}
      theelement[:first_name] = person
      data.each do |category, cat_data|
        theelement[category] = cat_data
      end
      returnarray << theelement
    end
  end
  return returnarray
end

def find_cool(collection)
  returnarray = collection.select do |person|
    person[:temperature] == "cool"
  end
  return returnarray
end

def organize_schools(collection)
  returnobject = {}
  collection.each do |school, dataobj|
    if !(returnobject[dataobj[:location]])
      returnobject[dataobj[:location]] = []
    end
    returnobject[dataobj[:location]] << school
  end
  return returnobject
end
