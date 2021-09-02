class ListNames
    def list(hash_array)
        list = ""
        hash_array.each do |name|
            if name[:name] == hash_array.last[:name] && hash_array.size > 1
                list << "& " + name[:name]
            elsif hash_array[-2] && name[:name] == hash_array[-2][:name]
                list << name[:name] + " "
            elsif hash_array.size == 1
                list << name[:name]
            else
                list << name[:name] + ", " 
            end
        end
        list
    end
end