phrase = "The Ruby Programming Language is amazing!"

def custom_start_with?(string, substring)
    if string[0, substring.length] == substring
        true
    else 
        false
    end
end
p custom_start_with?(phrase, "The")

def custom_end_with?(string, substring)
    if string[-substring.length..-1] == substring
        true
    else
        false
    end
end
p custom_end_with?(phrase, "amazing!")