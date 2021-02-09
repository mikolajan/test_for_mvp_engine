module Function
  SUM = 5.freeze

  def self.get_pairs(arr, sum = SUM)
    result = []

    while arr.any?
      num = arr.shift

      if arr.include?(sum - num)
        arr.delete_at(arr.index(sum - num))

        result << [num, sum - num]
      else
        arr.delete(num)
      end
    end

    result
  end
end
