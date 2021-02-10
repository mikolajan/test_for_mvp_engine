module Function
  SUM = 5.freeze

  # Method groups numbers by sum of pairs.
  # Each element of array has to be used only once.
  def self.get_pairs(arr, sum = SUM)
    result = []

    while arr.any?
      num = arr.shift

      index_of_pair = arr.index(sum - num)

      if index_of_pair.nil?
        arr.delete(num)
      else
        arr.delete_at(index_of_pair)

        result << [num, sum - num]
      end
    end

    result
  end
end
