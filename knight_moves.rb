def knight_moves(start, target)
  return [start] if start == target

  directions = [
    [2, 1], [1, 2], [-1, 2], [-2, 1],
    [-2, -1], [-1, -2], [1, -2], [2, -1]
  ]

  visited = Array.new(8) { Array.new(8, false) }
  queue = [[start, [start]]] # [current_position, path_so_far]

  until queue.empty?
    current_pos, path = queue.shift
    x, y = current_pos

    directions.each do |dx, dy|
      new_x, new_y = x + dx, y + dy
      next unless(0..7).include?(new_x) && (0..7).include?(new_y)
      next if visited[new_x][new_y]

      new_pos = [new_x, new_y]
      new_path = path + [new_pos]
      return announce_path(new_path) if new_pos == target

      visited[new_x][new_y] = true
      queue << [new_pos, new_path]
    end
  end
end

def announce_path(path)
  puts "You made it in #{path.length - 1} moves. Here is your path:"
  path.each { |step| p step }
  path
end

# Examples
knight_moves([0, 0], [1, 2])

knight_moves([0, 0], [3, 3])

knight_moves([3, 3], [0, 0])