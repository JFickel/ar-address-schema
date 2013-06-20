require_relative "app/models/contact"
p Contact.first
contact = Contact.new(first_name: "Jim", :last_name => "Bob", :company => "Caterpillar", 
                     :phone_number => "309-258-3737", :email_address => "jimbob@cat.com")
p contact.valid?