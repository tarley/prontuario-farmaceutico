module PacientsHelper

def phone_format number
    if !number.nil?
        raw "<span class='phone-number'>#{number}</span>"
    end
end    
    
end
