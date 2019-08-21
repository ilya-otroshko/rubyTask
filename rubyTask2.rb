studenti = {
    "Pavel" => 99,
    "Nikita" => 55,
    "Zhanna" => 75,
    "Jana" => 86,
    "Petr" => 61,
    "Vladimir" => 74,
  "Vlad" => 32,
  "Vimir" => 64,
  "Mir" => 94
  }
def largest_hash_key(hash)
    hash.max_by{|k,v| v}
  end

  itStudents = []
  noItStudents = []
  while itStudents.length <= 4 do
    largest = largest_hash_key(studenti)
    itStudents.push(largest[0], largest[1])
    studenti.delete(largest[0])
  end

  while noItStudents.length <= 4  do
    largest = largest_hash_key(studenti)
    noItStudents.push(largest[0], largest[1])
    studenti.delete(largest[0])
  end
  puts "\nЛучшие 3 студента, которые отобраны в ит-сферу:", "1- #{itStudents[0]} c баллом #{itStudents[1]}", "2- #{itStudents[2]} c баллом #{itStudents[3]}", "3- #{itStudents[4]} c баллом #{itStudents[5]}"
  
  puts "\n\n3 студента, набравшие больше 60-ти баллов отобраны в эм-сферу:", "1- #{noItStudents[0]} c баллом #{noItStudents[1]}", "2- #{noItStudents[2]} c баллом #{noItStudents[3]}", "3- #{noItStudents[4]} c баллом #{noItStudents[5]}"