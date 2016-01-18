require File.expand_path(File.dirname(__FILE__) + '/../trianglable')

describe Trianglable do
  specify { expect(Trianglable.valid_triangle(0,0,0)).to eq false }
end

