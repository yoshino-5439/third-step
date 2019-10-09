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
	
p rika.sum, rika.mean, rika.stdev
p eigo.sum, eigo.mean, eigo.stdev
p rika.stsco
p rika.sort_desc
