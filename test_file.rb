class Array

    def my_each(&prc)
        i = 0
        while i < self.length
            puts prc.call(self[i])
            i += 1
        end

        return self

    end

    



end


# p my_each{|ele| ele * 2}
