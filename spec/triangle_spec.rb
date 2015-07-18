require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe "正三角形" do
  specify { expect(Triangle.view_shape(1,1,1)).to eq "正三角形ですね！" }
  specify { expect(Triangle.view_shape(65535,65535,65535)).to eq "正三角形ですね！" }
end

describe "二等辺三角形" do
  specify { expect(Triangle.view_shape(1,3,3)).to eq "二等辺三角形ですね！" }
  specify { expect(Triangle.view_shape(3,3,1)).to eq "二等辺三角形ですね！" }
  specify { expect(Triangle.view_shape(3,1,3)).to eq "二等辺三角形ですね！" }

  specify { expect(Triangle.view_shape(100,200,200)).to eq "二等辺三角形ですね！" }
  specify { expect(Triangle.view_shape(200,100,200)).to eq "二等辺三角形ですね！" }
  specify { expect(Triangle.view_shape(200,200,100)).to eq "二等辺三角形ですね！" }
end

describe "不等辺三角形" do
  specify { expect(Triangle.view_shape(3,4,5)).to eq "不等辺三角形ですね！" }
  specify { expect(Triangle.view_shape(4,5,3)).to eq "不等辺三角形ですね！" }
  specify { expect(Triangle.view_shape(5,3,4)).to eq "不等辺三角形ですね！" }

  specify { expect(Triangle.view_shape(30,50,70)).to eq "不等辺三角形ですね！" }
  specify { expect(Triangle.view_shape(50,70,30)).to eq "不等辺三角形ですね！" }
  specify { expect(Triangle.view_shape(70,30,50)).to eq "不等辺三角形ですね！" }
end

describe "三角形ではない" do
  specify { expect(Triangle.view_shape(1,1,10)).to eq "三角形じゃないです＞＜" }
  specify { expect(Triangle.view_shape(1,10,1)).to eq "三角形じゃないです＞＜" }
  specify { expect(Triangle.view_shape(10,1,1)).to eq "三角形じゃないです＞＜" }

  specify { expect(Triangle.view_shape(0,5,5)).to eq "三角形じゃないです＞＜" }
  specify { expect(Triangle.view_shape(5,0,5)).to eq "三角形じゃないです＞＜" }
  specify { expect(Triangle.view_shape(5,5,0)).to eq "三角形じゃないです＞＜" }
  specify { expect(Triangle.view_shape()).to eq "三角形じゃないです＞＜" }
  specify { expect(Triangle.view_shape(1)).to eq "三角形じゃないです＞＜" }
  specify { expect(Triangle.view_shape(1,2)).to eq "三角形じゃないです＞＜" }
  specify { expect(Triangle.view_shape(1,2,3,4)).to eq "三角形じゃないです＞＜" }

  specify { expect(Triangle.view_shape(0,0,0)).to eq "三角形じゃないです＞＜" }

  specify { expect(Triangle.view_shape(-1,1,2)).to eq "三角形じゃないです＞＜" }

  specify { expect(Triangle.view_shape(1,2)).to eq "三角形じゃないです＞＜" }
  specify { expect(Triangle.view_shape(1,2,3,4)).to eq "三角形じゃないです＞＜" }

  specify { expect(Triangle.view_shape("a","a","a")).to eq "三角形じゃないです＞＜" }
end
