class Trianglable
  def self.trianglable(a, b, c)
    # 三角形の成立条件
    # a+b>c && b+c>a && c+a>b でなければfalse
    # 参考:http://mathtrain.jp/seiritu
    a+b>c && b+c>a && c+a>b
  end
end
