def birthday_match(to_bday)
  to_bday_no_year = to_bday[5..9]
  famous_birthdays = [
    {:name => "Paul Revere", :fact => "US patriot and The British are coming", :birthday => "01-01"}, 
    {:name => "Lisa Marie Presley", :fact => "Elvis's daughter", :birthday => "02-01"}, 
    {:name => "Frederic Chopin", :fact => "composer", :birthday => "03-01"}
  ]
  
  famous_person = famous_birthdays.select { |person| person[:birthday] == to_bday_no_year}
  famous_person[0][:name]
  
end

def message_previewer(to_name, to_bday, from_name)
  "HAPPY BIRTHDAY #{to_name.upcase}! You have the same birthday as #{birthday_match(to_bday)}. Love, #{from_name}." 
end

=begin
to_name = "Lyel"
to_bday = "1901-02-01"
to_phone = "7209512343"
from_name = "BriSuDa"
puts message_previewer(to_name, to_bday, from_name)
=end