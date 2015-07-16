require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe Triangle do
  specify { expect(Triangle.view_shape([1,2,4])).to eq "三角形じゃないです＞＜" }
end
