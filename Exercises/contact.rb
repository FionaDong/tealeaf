contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
							["sally@email.com", "404 Not found Dr.", "123-34-3454"]]

contacts = {"Joe Smith" =>{}, "Sally Johnson" =>{}}

def contact_first_name(contacts)
	names = {}
	contacts.keys.each do |name|
		names[name] = name.split(' ').first.downcase
	end
	return names
end

# p contact_fist_name(contacts)

def contacts_match(contacts,contact_data)
	contact_data.each do |info|
		names = contact_first_name(contacts)
		names.each do |key, name|
			if info.first =~ /#{name}/
					contacts[key][:email] = info.first
					info.shift
					contacts[key][:address] = info.first
					info.shift
					contacts[key][:phone] = info.first
			end		
		end
	end
	return contacts
end

p contacts_match(contacts,contact_data)