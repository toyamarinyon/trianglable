require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe Triangle do
  specify {
    expect(Triangle.trianglable(0,0,0)).to eq false
    expect(Triangle.trianglable(0,1,2)).to eq false
    expect(Triangle.trianglable(2,0,1)).to eq false
    expect(Triangle.trianglable(1,2,0)).to eq false
    expect(Triangle.trianglable(3,4,5)).to eq true
    expect(Triangle.trianglable(3,4,7)).to eq false
    expect(Triangle.trianglable(7,3,4)).to eq false
    expect(Triangle.trianglable(4,7,3)).to eq false
  }
  specify {
    expect(Triangle.isosceles_trianglable(0,0,0)).to eq false
    expect(Triangle.isosceles_trianglable(3,4,5)).to eq false
    expect(Triangle.isosceles_trianglable(3,4,4)).to eq true
    expect(Triangle.isosceles_trianglable(3,4,3)).to eq true
    expect(Triangle.isosceles_trianglable(1,1,3)).to eq false
  }
  specify {
    expect(Triangle.right_trianglable(0,0,0)).to eq false
    expect(Triangle.right_trianglable(3,4,4)).to eq false
    expect(Triangle.right_trianglable(3,4,3)).to eq false
    expect(Triangle.right_trianglable(4,4,4)).to eq true
    expect(Triangle.right_trianglable(100,100,100)).to eq true
  }
end

