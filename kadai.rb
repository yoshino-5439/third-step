#s /usr/bin/env ruby

rika = [65, 80, 67, 35, 58, 60, 72, 75, 68, 92, 36, 50, 2, 58.5, 46, 42, 78, 62, 84, 70]
eigo = [44, 87, 100, 63, 52, 60, 58, 73, 55, 86, 29, 56, 89, 23, 65, 84, 64, 27, 86, 84]

class Array
  def mean#平均値
    sum.to_f / size
  end

  def var#分散
    m = mean
    reduce(0) { |a, b| a + (b - m) ** 2 } / size
  end

  def stdev#標準偏差
    Math.sqrt(var)
  end

  def stsco#偏差値
    m = mean
    s = stdev
    map { |n| 10 * (n - m) / s + 50 } 
  end

  def sort_desc#降順ソート
    sort { |a, b| b <=> a }
  end
end

printf("-----理科-----\n")
printf("平均点:%f\n", rika.mean)
printf("標準偏差:%f\n", rika.stdev)
printf("合計点:%f\n", rika.sum)
print "偏差値:", rika.stsco, "\n"
print "並び替え:", rika.sort_desc, "\n"

printf("-----英語-----\n")
printf("平均点:%f\n", eigo.mean)
printf("標準偏差:%f\n", eigo.stdev)
printf("合計点:%f\n", eigo.sum)
print "偏差値:", eigo.stsco, "\n"
print "並び替え:", eigo.sort_desc, "\n"

