class PolyTreeNode
    def initialize(value, children = [])
        @value = value
        @parent = nil
        @children = children
    end

    def parent=(node)
        if node == nil
            @parent = node
            return
        end
        if node.children.include?(self)
            return
        end
        if self.parent != nil
            node.children << self
            self.parent.children.delete(self)
            @parent = node
        else
            node.children << self
            @parent = node
        end
    end

    def inspect
        @children
    end

    attr_reader :children, :parent, :value
end

# node
