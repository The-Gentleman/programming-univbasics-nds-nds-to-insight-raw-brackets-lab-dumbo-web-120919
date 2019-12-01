$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)

#total = 0 
#row_index = 0 

#director_c#ounter = 0 
result = {
} 
 
while director_counter < nds.length do 
 director_name = nds[director_counter][:name]
 movie_counter = 0
 result[director_name] = 0 

  while movie_counter < nds[director_counter][:movies].count do 
   result[director_name] += nds[director_counter][:movies][movie_counter][:worldwide_gross]
   movie_counter += 1 
  end 

  director_counter += 1 
end 
  
p result 
end 

