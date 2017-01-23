class Transaction
  def initialize(value)
    @value = value
    @date = Time.now.strftime('%d,%m,%Y')
  end

  attr_reader :value, :date
end
