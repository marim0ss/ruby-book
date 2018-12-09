# テストコードの雛形
require 'minitest/autorun'
# ↑ライブラリを読み込んでプログラム内でMinitestを使えるようにする

# テストコードの本体。Minitestはtest_で始まるメソッドを探して全て実行する
#なのでメソッド名をtest_で始めることが重要
class SampleTest < Minitest::Test
  # クラス名は自由だが、testで始めるか終わる名前にする、
  #また、テストコードが書かれたファイル名にはクラス名と合わせるのが慣習
  def test_sample
    assert_equal 'RUBY', 'ruby'.upcase
  end
end
