class Lib
  def initialize
    p :initialize
  end
  def get_name; 'ytyaru'; end
  def calc(*args); args.sum; end
  def raise_error; raise 'raise_errorの例外です。'; end
  def rescue_error
    begin 
      raise 'rescue_errorの例外です。'
    rescue => e
      p e
    ensure 
      p "必ず実行する。"
    end
  end
end
