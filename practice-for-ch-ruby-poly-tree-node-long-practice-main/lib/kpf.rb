require_relative 'tree_node.rb'

class KnightPathFinder
    def initialize(start_pos)
        @start_pos = start_pos
        @root_node = PolyTreeNode(start_pos)
        @tree = self.build_move_tree
        @considered_positions = Hash.new { |h, k| h[k] = false }
    end

    def self.valid_moves(pos)
        row, col = pos
        # row +- 2, col +- 1; row +- 1, col +- 2  (8 possible moves)
        moves = []
        row_moves = [-2, -1, 1, 2]
        col_moves = [-2, -1, 1, 2]
        row_moves.each do |ele_1|
            col_moves.each do |ele_2|
                moves << [ele_1, ele_2] if ele_1.abs  + ele_2.abs  == 3
            end
        end
        moves
    end

    def new_move_positions(pos)
    end

    def build_move_tree
    end

    def find_path(end_pos)
    end

end
