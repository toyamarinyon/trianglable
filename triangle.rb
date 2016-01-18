class Triangle
  def self.trianglable(a, b, c)
    # 三角形の成立条件
    # a+b>c && b+c>a && c+a>b でなければfalse
    # 参考:http://mathtrain.jp/seiritu
    a+b>c && b+c>a && c+a>b
  end

  def self.isosceles_trianglable(a, b, c)
    trianglable(a,b,c) && (a==b || b==c || c==a)
  end

  def self.right_trianglable(a, b, c)
    trianglable(a,b,c) && a == b && b == c
  end

  def initialize(a,b,c)
    if not Triangle.trianglable(a,b,c) then
      puts "三角形じゃないです＞＜"
    elsif Triangle.right_trianglable(a,b,c)
      puts "正三角形ですね！"
    elsif Triangle.isosceles_trianglable(a,b,c)
      puts "二等辺三角形ですね！"
    else
      puts "不等辺三角形ですね！"
    end
  end
end

if ARGV.size < 2 && $0 == "triangle.rb"
  STDERR.print "入力値が足りません。"
  STDERR.print "使いかた: $ ruby #{$0} a b c"
  exit
end
Triangle.new(ARGV[0].to_i, ARGV[1].to_i, ARGV[2].to_i) if $0 == "triangle.rb"
