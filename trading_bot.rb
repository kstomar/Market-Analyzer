# frozen_string_literal: true

# TradingBot Class
class TradingBot
  attr_accessor :name, :active, :strategy

  def initialize(name, strategy)
    @name = name
    @active = false
    @strategy = strategy
    @prices = []
  end

  def activate
    @active = true
    puts "#{@name} is now active."
  end

  def deactivate
    @active = false
    puts "#{@name} is now inactive."
  end

  def make_trade_decision(price)
    @prices << price

    # assuming sma_window as 15.
    sma_window = 15

    return :hold unless @prices.length >= sma_window

    if @prices.length >= sma_window
      short_term_sma = @prices[-sma_window..].sum / sma_window
      long_term_sma = @prices.sum / @prices.length
    end

    action = calculate_action(short_term_sma, long_term_sma)

    puts "#{@name} decided to #{action} (Short SMA: #{short_term_sma}, Long SMA: #{long_term_sma})"
    action
  end

  private

  # Calculates recommended action based on averages (buy, sell, or hold)
  def calculate_action(short_term_avg, long_term_avg)
    short_term_avg > long_term_avg ? :buy : (short_term_avg < long_term_avg ? :sell : :hold)
  end
end
