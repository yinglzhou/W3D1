class Array

    def my_each(&prc)
        i = 0
        while i < self.length
            prc.call(self[i])
            i += 1
        end
        return self
    end

    def my_select(&prc)
        finalarr = []
        self.my_each do |ele| 
            finalarr << ele if prc.call(ele)
        end



        # i = 0
        # while i < self.length
        #     finalarr << self[i] if self.my_each(&prc)
        #     i += 1
        finalarr
    end
    
    def my_reject(&prc)
        finalarr = []
        self.my_each { |ele| finalarr << ele if !prc.call(ele) }
        finalarr
    end

end


# p my_each{|ele| ele * 2}
