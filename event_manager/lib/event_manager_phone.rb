require 'csv'
require 'date'

def clean_phone(phone_number)
	phone_num = phone_number.gsub(/[\D]/,'')
	if phone_num.length == 11 && phone_num[0] == "1"
		phone_num[0] = ''
		phone_num
	elsif phone_num.length == 10
		phone_num
	else
		phone_num = "bad number"
	end
end

def most_hour(date)
	puts date
	date_hash = DateTime.strptime(date, '%H')

end

def legislators_by_zipcode(zipcode)
	legislators = Sunlight::Congress::Legislator.by_zipcode(zipcode)
end

def save_thank_you_letters(id,form_letter)
	Dir.mkdir("output") unless Dir.exists? "output"

	filename = "output/thanks_#{id}.html"

	File.open(filename,'w') do |file|
		file.puts form_letter
	end
end

puts "Clean phone numbers!"

contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol

contents.each do |row|
	id = row[0]
	name = row[:first_name]
	
#	phone = clean_phone(row[5])
	puts most_hour(row[1])
	
end
