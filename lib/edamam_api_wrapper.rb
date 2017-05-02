require 'httparty'

class EdamamApiWrapper
  BASE_URL =  "https://api.edamam.com/search?"
  APP_ID = ENV["APP_ID"]
  APP_KEY = ENV["APP_KEY"]

  def self.search(search_terms)
    search = search_terms.gsub(' ','+')
    url = BASE_URL + "app_id=#{APP_ID}&" + "app_key=#{APP_KEY}&" + "q=#{search}"

    result = HTTParty.get(url)
    recipes = result["hits"]
    return recipes
  end

  def self.getRecipe(uri)
    url = BASE_URL + "app_id=#{APP_ID}&" + "app_key=#{APP_KEY}&" + "r=#{uri}"

    result = HTTParty.get(url)
    
    #creates
    # parse out info based on recipe
    # Name
    # Link to the original recipe (opens in a new tab)
    # Ingredients
    # Dietary information
  # end
end
