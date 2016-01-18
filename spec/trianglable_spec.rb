require File.expand_path(File.dirname(__FILE__) + '/../trianglable')

describe Trianglable do
  specify {
    expect(Trianglable.trianglable(0,0,0)).to eq false
    expect(Trianglable.trianglable(0,1,2)).to eq false
    expect(Trianglable.trianglable(2,0,1)).to eq false
    expect(Trianglable.trianglable(1,2,0)).to eq false
    expect(Trianglable.trianglable(3,4,5)).to eq true
    expect(Trianglable.trianglable(3,4,7)).to eq false
    expect(Trianglable.trianglable(7,3,4)).to eq false
    expect(Trianglable.trianglable(4,7,3)).to eq false
  }
  specify {
    expect(Trianglable.isosceles_trianglable(0,0,0)).to eq false
  }
end

