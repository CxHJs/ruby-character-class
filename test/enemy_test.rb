# テストフレームワーク minitest を利用する
require 'minitest/autorun'

# テスト結果の見た目を良くする
require 'minitest/reporters'
Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

# テスト対象のRubyスクリプトを読み込む
require_relative '../lib/enemy.rb'

# テストを実行するためのクラス
class EnemyTest < Minitest::Test

  def setup
    @enemy = Enemy.new('魔王', 10000, 200)
  end

  def test_name
    assert_equal(@enemy.name, '魔王')
  end

  def test_hp
    assert_equal(@enemy.hp, 10000)
  end

  def test_damage
    assert_equal(@enemy.damage, 200)
  end

  def test_dead
    enemy_hp1 = Enemy.new('魔王', 1, 200)
    enemy_hp0 = Enemy.new('魔王', 0, 200)

    assert_equal(enemy_hp1.dead?, false)
    assert_equal(enemy_hp0.dead?, true)
  end

  def attack
    
  end
end
