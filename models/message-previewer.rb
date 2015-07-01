def birthday_match(to_bday)
  
  famous_birthdays = [
    {:name => "Paul Revere", :fact => "US patriot and The British are coming", :birthday => "01-01"}, 
    {:name => "Lisa Marie Presley", :fact => "Elvis's daughter", :birthday => "02-01"}, 
    {:name => "Frederic Chopin", :fact => "composer", :birthday => "03-01"}
  ]
  
  famous_person = famous_birthdays.select { |person| person[:birthday] == to_bday}
  famous_person[0][:name]
  
end

def message_previewer(to_name, to_bday, from_name)
  "HAPPY BIRTHDAY #{to_name.upcase}! You have the same birthday as #{birthday_match(to_bday)}. Love, #{from_name}." 
end

to_name = "Lyel"
to_bday = "02-01"
to_phone = "7209512343"
from_name = "BriSuDa"

message_previewer(to_name, to_bday, from_name)