class Triangle
  def self.view_shape(sides)
    # 引数の数が3でなければ三角形ではない
    unless sides.size == 3
      return not_triangle
    end
    # 辺の長さで昇順にソートしておく
    sides.sort!

    # 3辺が全て等しければ正三角形
    if (sides[0] == sides[1] && sides[1] == sides[2])
      return eq_triangle
    # 2辺が等しければ二等辺三角形
    elsif (sides[0] == sides[1] || sides[1] == sides[2])
      return iso_triangle
    # 最大辺の長さ > その他2辺の和 であれば三角形
    elsif (sides[0] + sides[1] > sides[2])
      return triangle
    # いずれでもなければ三角形ではない
    else
      return not_triangle
    end
  end

  private
  def self.eq_triangle
    "正三角形ですね！"
  end

  def self.iso_triangle
    "二等辺三角形ですね！"
  end

  def self.triangle
    "不等辺三角形ですね！"
  end

  def self.not_triangle
    "三角形じゃないです＞＜"
  end
end

### MAIN ###
sides = ARGV.join.split.map(&:to_i)
puts Triangle.view_shape(sides)

