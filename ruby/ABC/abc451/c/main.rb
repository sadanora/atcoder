class PriorityQueue
  attr_reader :heap

  def initialize(array = [], &comp)
    @heap = array
    @comp = comp || proc { |x, y| x > y }
    heapify
  end

  alias to_a heap

  def self.[](*array, &comp)
    new(array, &comp)
  end

  # 追加 Enqueue
  def push(item)
    bubble_up(0, @heap.push(item).size - 1)
    self
  end

  alias << push
  alias enq push

  # 取り出し Dequeue
  def pop
    return nil if empty?
    return @heap.pop if size == 1

    ret_item = @heap[0]
    @heap[0] = @heap.pop
    bubble_down(0)
    ret_item
  end

  alias deq pop

  # 参照 peek
  def top
    @heap[0]
  end

  alias peek top
  alias first top

  def empty?
    @heap.empty?
  end

  def size
    @heap.size
  end

  def to_s
    "<#{self.class}: @heap:(#{heap.join(', ')}), @comp:<#{@comp.class} #{@comp.source_location.join(':')}>>"
  end

  private

  def heapify
    (@heap.size / 2 - 1).downto(0) { |i| bubble_down(i) }
  end

  def bubble_down(pos)
    end_pos = @heap.size
    start_pos = pos
    new_item = @heap[pos]
    left_child_pos = 2 * pos + 1

    while left_child_pos < end_pos
      right_child_pos = left_child_pos + 1
      if right_child_pos < end_pos && @comp.call(@heap[right_child_pos], @heap[left_child_pos])
        left_child_pos = right_child_pos
      end
      # Move the higher priority child up.
      @heap[pos] = @heap[left_child_pos]
      pos = left_child_pos
      left_child_pos = 2 * pos + 1
    end
    @heap[pos] = new_item
    bubble_up(start_pos, pos)
  end

  def bubble_up(star_pos, pos)
    new_item = @heap[pos]
    while pos > star_pos
      parent_pos = (pos - 1) >> 1
      parent = @heap[parent_pos]
      break if @comp.call(parent, new_item)

      @heap[pos] = parent
      pos = parent_pos
    end
    @heap[pos] = new_item
  end
end

pq = PriorityQueue.new {|x, y| x < y }
q = gets.to_i
q.times do
  case gets.split.map(&:to_i)
  in [1, h]
    pq << h
  in [2, h]
    while !pq.empty? && (pq.first <= h)
      pq.pop
    end
  end
  p pq.size
end

