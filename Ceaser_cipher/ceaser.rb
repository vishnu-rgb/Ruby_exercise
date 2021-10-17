def ceaser_cipher(string,factor=0)
    enc=""
    string.each_char do |i| 
        if i.ord.between?(65,90) || i.ord.between?(97,122)
             new= i.ord + factor
        
            if (new > 90 && i.ord <=90 ) || new >122
                new-=26
            
            elsif (new<97 && new > 90) 
                new=i.ord - 6 +factor
                new=new +32
        
            
            end
            enc+=new.chr
        else
            enc+=i
        end

    end
    enc
end
puts ceaser_cipher("hello welcome in new era!",5)# now decrypt the code 
puts ceaser_cipher("mjqqt bjqhtrj ns sjb jwf!",-5)
