# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
	def initialize(emails)
		@emails = emails 
	end
	# attr_accessor :emails
	def parse
		if @emails.include? ","
			new_email_addresses = @emails.split(",")
			new_email_addresses2 = []
			new_email_addresses.each do |x|
				new_email_addresses2 << x.split(" ")  
			end
			return new_email_addresses2.flatten().uniq#.map{|s| s.strip()}
			# return new_email_addresses.
		else 
			new_email_addresses = @emails.split(" ")
			return new_email_addresses.map{|s| s.strip()}.uniq
		end
	end

end 

