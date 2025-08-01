# Project-Knight-Travails 🐴♟️

This Ruby project finds the shortest path a knight can take on a standard 8x8 chessboard from a starting position to a target position.

The solution uses **Breadth-First Search (BFS)** to explore valid knight moves and determine the fastest route from point A to point B.

---

## 🧠 Concepts Used

- **Graph Traversal (BFS)**: Each board position is treated as a node, and possible knight moves are edges between nodes.
- **Grid Representation**: Chessboard positions are represented as `[x, y]` coordinates.
- **Queue for BFS**: BFS ensures the shortest path is found.
- **Tracking Visited Nodes**: Prevents cycles or unnecessary work.

---

## 📁 File Structure
```bash
.
├── knight_moves.rb # Contains the core logic and knight_moves method
├── main.rb # (Optional) Entry point to test the function
└── README.md # This file
```


## ⚙️ Usage

### Example:

```ruby
require_relative 'knight_moves'

knight_moves([0, 0], [3, 3])
```

### Output:

```ruby
You made it in 2 moves! Here's your path:
[0, 0]
[1, 2]
[3, 3]
```

## 🧪 Example Inputs and Outputs

```ruby
knight_moves([0, 0], [1, 2])
# => [0, 0], [1, 2]

knight_moves([0, 0], [3, 3])
# => [0, 0], [1, 2], [3, 3] OR [0, 0], [2, 1], [3, 3]

knight_moves([3, 3], [0, 0])
# => [3, 3], [1, 2], [0, 0] OR other shortest paths

knight_moves([0, 0], [7, 7])
# => Output varies, but will be 6 moves
```

## 🛠️ To Run

### In terminal:
```bash
ruby knight_moves.rb
```

### Or, to test from another file:
```bash
require_relative 'knight_moves'
knight_moves([0, 0], [7, 7])
```