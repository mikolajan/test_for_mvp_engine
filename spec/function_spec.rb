require 'function'

describe Function do
  describe '#get_pairs' do
    it 'returns [[3, 2], [5, 0]]' do
      expect(Function.get_pairs([22, 3, 5, 0, 2, 2])).to eq [[3, 2], [5, 0]]
    end

    it 'returns [[-5, 10], [2, 3], [2, 3], [5, 0]]' do
      expect(Function.get_pairs([-5, 33, 2, 2, 3, 5, 0, 10, 3])).to eq [[-5, 10], [2, 3], [2, 3], [5, 0]]
    end

    it 'returns [[5, 0], [5, 0], [5, 0]]' do
      expect(Function.get_pairs([5, 5, 5, 0, 0, 0, 5])).to eq([[5, 0], [5, 0], [5, 0]])
    end

    it 'returns [[3, 3], [6, 0]]' do
      expect(Function.get_pairs([3, 3, 6, 0], 6)).to eq([[3, 3], [6, 0]])
    end
  end
end
