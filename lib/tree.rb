require "byebug"
class Tree

  def initialize(root = nil)
    @root = root
  end

  def breadth_first_traversal(node)
    result = []
    nodes_to_visit = [node]

    while nodes_to_visit.length > 0
      node = nodes_to_visit.shift
      result.push(node[:value])
      nodes_to_visit = nodes_to_visit + node[:children]
    end
  end

  def get_element_by_id(string)
    result = []
    nodes_to_visit = [@root]
    while nodes_to_visit.length > 0
      node = nodes_to_visit.shift
      if node[:id] == string
        return node
      else
        nodes_to_visit = node[:children] + nodes_to_visit
      end
    end
  end
end