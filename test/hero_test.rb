# テストフレームワーク minitest を利用する
require 'minitest/autorun'

# テスト結果の見た目を派手にする
require 'minitest/reporters'
Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

# テスト対象のRubyソースコードを読み込む
require_relative '../lib/hero.rb'

# テストを実行するためのクラス
class HeroTest < Minitest::Test

  def setup
    @hero = Hero.new('剣士', 2000, 800)
  end

  def test_name
    assert_equal(@hero.name, '剣士')
  end

  def test_hp
    assert_equal(@hero.hp, 2000)
  end

  def test_damage
    assert_equal(@hero.damage, 800)
  end

  def test_dead
    hero_hp1 = Hero.new('剣士', 1, 800)
    hero_hp0 = Hero.new('剣士', 0, 800)
    hero_hpminus = Hero.new('剣士', -1, 800)

    assert_equal(hero_hp1.dead?, false)
    assert_equal(hero_hp0.dead?, true)
    assert_equal(hero_hpminus.dead?, true)
  end
end
