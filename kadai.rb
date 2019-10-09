#s /usr/bin/env ruby

rika = [65, 80, 67, 35, 58, 60, 72, 75, 68, 92, 36, 50, 2, 58.5, 46, 42, 78, 62, 84, 70]
eigo = [44, 87, 100, 63, 52, 60, 58, 73, 55, 86, 29, 56, 89, 23, 65, 84, 64, 27, 86, 84]

class Array
  def mean
    sum.to_f / size
  end

  def var
    m = mean
    reduce(0) { |a, b| a + (b - m) ** 2 } / (size - 1)
  end

  def stdev
    Math.sqrt(var)
  end

  def stsco
    m = mean
    s = stdev
    map { |n| 10 * (n - m) / s + 50 } 
  end

  def sort_desc
    sort { |a, b| b <=> a }
  end
end

printf("-----理科-----\n")
printf("平均点:%f\n", rika.mean)
printf("標準偏差:%f\n", rika.stdev)
printf("合計点:%f\n", rika.sum)
print "偏差値:", rika.stsco, "\n"
print "並び替え:", rika.sort_desc, "\n"

p eigo.sum, eigo.mean, eigo.stdev
p rika.stsco
p rika.sort_desc
