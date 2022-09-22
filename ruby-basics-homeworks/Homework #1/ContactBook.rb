def init
    printbar
    puts "- Welcome to your Contact book!"
    puts "What do you want to do today?"
    puts "1.Add a new contact"
    puts "2.Update an existing record"
    puts "3.Delete a contact"
    puts "4.Look for a specific record"
    puts "5.Show all your contacts..."
    puts "6.Print all your contacts in a summary"
    puts "7.Leave:("
    valid = false
        while valid != true do
        valid = true
        option = gets.chomp
        case option
        when "1" then add 
        when "2" then update
        when "3" then delete
        when "4" then findone
        when "5" then findall
        when "6" then generate_report
        when "7" then goodbye   
        else
            puts "Your input was invalid, please try again:)"
            valid = false
        end
    end
end

$contacts = Array.new
def add
    new_contact = Array.new
    puts "Okay, so let's add someone!"
    puts "Please tell me the next information:"
    puts "First name:" 
    first_name = gets.chomp 
    puts "Last name:"
    last_name = gets.chomp
    puts "E-mail:" 
    email = gets.chomp
    puts "Phone number:"
    phone_number = gets.chomp
    puts "His name is #{first_name} #{last_name}, his email #{email} and his phone number #{phone_number}, it's everything alright? (Y/N)"
    answer = gets.chomp
    while answer != "N" && answer != "Y" do
    puts "Oops! I could not understand it, please try again:"  
    answer = gets.chomp
    end
    
    if answer == "N"
    valid = false
    while valid != true do
    
        valid = true
        printbar
        puts "- What do you wanna change from this contact?"
        puts "1.First name"
        puts "2.Last name"
        puts "3.Email"
        puts "4.Phone number"
        puts "5.Nothing, everything is okay! Go to the main menu."
        option = gets.chomp
        case option
        when "1"
        puts "Enter new first name:"
        first_name = gets.chomp
        when "2" 
        puts "Enter new last name:"
        last_name = gets.chomp
        when "3"
        puts "Enter the new email"
        email = gets.chomp
        when "4"
        puts "Enter the new phone number" 
        phone_number = gets.chomp
        when "5" then init
        else
            puts "Your input is invalid, please try again:)"
            valid = false
        end
    end
    end

    new_contact.push(first_name, last_name, email, phone_number)
    puts "Great so everything is set now!, what would you like to do now?"
    puts "1.Add another contact"
    puts "2.Go to the main menu"
    puts "3.Leave app"
    $contacts.push(new_contact)
    option = gets.chomp
    case option
    when "1" then add
    when "2" then init
    when "3" then goodbye
    else
        puts "Any of your inputs is valid, please try again:)"
    end
end

def update
    printbar
    puts "Oh, whose information you wanna edit?"
    puts "Please enter his email:"
    email = gets.chomp
    $contacts.map! { |contact|
    if(contact[2] == email)
        valid = false
        while valid != true do
            valid = true
            printbar
            puts "- What do you wanna change from this contact?"
            puts "1.First name"
            puts "2.Last name"
            puts "3.Email"
            puts "4.Phone number"
            puts "5.Nothing, go back to the main menu."
            option = gets.chomp
            case option
            when "1"
            puts "Enter the new first name:"
            first_name = gets.chomp
            contact[0] = first_name
            when "2"
            puts "Enter the new last name:" 
            last_name = gets.chomp
            contact[1] = last_name
            when "3"
            puts "Enter the new email"
            email = gets.chomp
            contact[2] = email
            when "4"
            puts "Enter the new phone number" 
            phone_number = gets.chomp
            contact[3] = phone_number
            when "5" then init
            else
                puts "Your input is invalid, please try again:)"
                valid = false
            end
        end
        puts "Transaction completed succesfully!"
        alternative_menu
    else
        puts "Oops, the email entered did not work, Please enter a valid one."
    end
    }



end

def delete
    printbar
    puts "Well, let's eliminate that person!... From the contact book."
    puts "Please enter his email:"
    
    email = gets.chomp
    $contacts.map! { |contact|
        if(contact[2] == email)
            $contacts.delete_if{|contact| contact[2] == email}
            puts "The record was deleted sucessfully!" 
            alternative_menu
        else
            puts "Oops, the email entered did not work, Please enter a valid one."
            alternative_menu
        end
        }
end

def findone
    puts "Tell me, who do you wanna find?"
    puts "Please enter his email:"
    email = gets.chomp
    contact = $contacts.select {|contact| contact[2] == email}
    
    puts "=============="
    puts "Records found:"
    puts "Name: #{contact[0][0]}"
    puts "Last name: #{contact[0][1]}"
    puts "Email: #{contact[0][2]}"
    puts "Phone number: #{contact[0][3]}"
    alternative_menu
end

def findall
    if $contacts.length > 0
        puts "All your contacts? Of course, here they are:"
        id = 1
        $contacts.each do |contact|
        puts "==================="
        puts "Contact #{id}"
        puts "Name: #{contact[0]}"
        puts "Last name: #{contact[1]}"
        puts "Email: #{contact[2]}"
        puts "Phone number: #{contact[3]}"
        id +=1
        end
    else
        printbar
        puts "Oh wow! It seems that your book is empty:)"
    end
    alternative_menu
end

def generate_report
    if $contacts.length > 0
        puts "OKAY. So here we go, generating report... Please check out your desktop!"
        File.open("MyContacts.txt", "w")
        id = 1
        $contacts.each do |contact|
            File.open("MyContacts.txt", "a") {|f| f.write("- - - - -"+"\n"+"Contact "+id.to_s+"\nName: "+contact[0] +"\n"+"Last Name: "+contact[1]+"\n"+"Email: "+contact[2]+"\n"+"Phone number: "+contact[3]+"\n") }
            id+=1
        end
    else
        puts "Oh, it was not possible, your book seems to be empty:)"
        alternative_menu
    end
    
end

def alternative_menu
    puts "############################"
    puts "What would you like to do know?"
    puts "1.Go back to the main menu"
    puts "2.Exit the app"
    valid = false
    while valid != true do
    valid = true
    option = gets.chomp
    case option
    when "1" then init
    when "2" then goodbye
    else
        puts "Your input was invalid, please try again:)"
        valid = false
    end 
    end

end

def printbar
    puts "- - - - - - - - - - - - - - - - - - - -"
end

def goodbye
    puts "Alright, bye bye, have a nice day!"
end

init
