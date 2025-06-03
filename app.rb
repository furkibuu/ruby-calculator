def toplama(a, b)
  a + b
end

def cikarma(a, b)
  a - b
end

def carpma(a, b)
  a * b
end

def bolme(a, b)
  return "Sıfıra bölünemez!" if b == 0
  a.to_f / b
end

def us_al(a, b)
  a ** b
end

def mod_al(a, b)
  a % b
end

def islemi_sec(komut, a, b)
  case komut
  when '+' then toplama(a, b)
  when '-' then cikarma(a, b)
  when '*' then carpma(a, b)
  when '/' then bolme(a, b)
  when '^' then us_al(a, b)
  when '%' then mod_al(a, b)
  else "Geçersiz işlem!"
  end
end

puts "📟 Ruby Hesap Makinesi"
puts "İşlem türleri: + - * / ^ (üs alma) % (mod alma)"

loop do
  print "\nBirinci sayı: "
  x = gets.chomp
  break if x.downcase == "çık"

  print "İkinci sayı: "
  y = gets.chomp
  break if y.downcase == "çık"

  print "İşlem seç (+, -, *, /, ^, %): "
  islem = gets.chomp

  begin
    x = Float(x)
    y = Float(y)
    sonuc = islemi_sec(islem, x, y)
    puts "Sonuç: #{sonuc}"
  rescue
    puts "Lütfen geçerli sayılar girin."
  end

  print "Devam etmek istiyor musun? (e/h): "
  devam = gets.chomp.downcase
  break if devam != "e"
end

puts "👋 Görüşmek üzere!"

