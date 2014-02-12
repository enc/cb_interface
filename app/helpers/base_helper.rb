module BaseHelper
  def which_name entity
    if entity['name']
      entity['name']
    else
      entity['first_name'] + ' ' + entity['last_name']
    end
  end
end
