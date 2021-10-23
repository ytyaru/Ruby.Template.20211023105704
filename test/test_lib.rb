require './lib.rb'
require 'test/unit'
class TestLib < Test::Unit::TestCase
  class << self
    def startup; p :_startup; end
    def shutdown; p :_shutdown; end
  end
  def setup; p :setup; end
  def teardown; p :teardown; end
  def cleanup; p :cleanup; end
  def test_get_name
    assert_equal('ytyaru', Lib.new.get_name)
  end
  data('test1'=>[1, [1]],
       'test2'=>[3, [1,2]],
       'test3'=>[6, [1,2,3]])
  def test_calc(data)
    expected, actual = data
    assert_equal(expected, Lib.new.calc(*actual))
  end
  def test_raise_error
    e = assert_raises RuntimeError do
      Lib.new.raise_error
    end
    assert_equal 'raise_errorの例外です。', e.message
  end
  def test_rescue_error
    Lib.new.rescue_error
  end
end
