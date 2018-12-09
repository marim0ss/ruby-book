#to_hex  :10=>16進数に変換するメソッド
def to_hex(r,g,b)
  '#' +
    r.to_s(16).rjust(2, '0') +
    g.to_s(16).rjust(2, '0') +
    b.to_s(16).rjust(2, '0')
end



=begin
これでも可
  hex = '#'
  [r,g,b].each do |n|    #引数のr,g,bを[]で配列に入れてeach
      hex += n.to_s(16).rjust(2, '0')  #16進数に変換し、hexに連結
  end

hex        #最後に変数hexをメソッドの戻り値として返す
=end

#to_ints  :RGBカラーを表す16進数文字列を受け取り、R,G,Bそれぞれ10進数の整数に変換した値を配列として返す
#  例：to_ints(#ffffff)  =>[255,255,255]
def to_ints(hex)
    # 引数の文字列から、３つの16進数の文字列を取り出す
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]


    # ３つのの16進数を配列[]に入れ、10進数の整数に変換して別の配列intsに入れる
  ints = []
  [r, g, b].each do |s|
    ints << s.hex
  end

    # 10進数の整数が入った配列を返す
  ints
end
