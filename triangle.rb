class Triangle
  EQ_TRIANGLE = "正三角形ですね！"
  ISO_TRIANGLE = "二等辺三角形ですね！"
  TRIANGLE = "不等辺三角形ですね！"
  NOT_TRIANGLE = "三角形じゃないです＞＜"
  def self.view_shape(s1, s2, s3)
    # 辺の長さで昇順にソートしておく
    sides = [s1, s2, s3].map!(&:to_i).sort

    # 最大辺の長さ >= その他2辺の和 であれば三角形ではない
    return NOT_TRIANGLE if (sides[2] >= sides[0] + sides[1])

    # 3辺が全て等しければ正三角形
    if (sides[0] == sides[1] && sides[1] == sides[2])
      return EQ_TRIANGLE
    # 2辺が等しければ二等辺三角形
    elsif (sides[0] == sides[1] || sides[1] == sides[2])
      return ISO_TRIANGLE
    # 上記いずれでもなければ不等辺三角形
    else
      return TRIANGLE
    end
  end
end

### MAIN ###
if (ARGV.size > 0)
  sides = ARGV.join.split(',').map(&:to_i)
  puts Triangle.view_shape(sides[0], sides[1], sides[2])
end

