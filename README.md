# Market Analyzer

This Ruby class encapsulates a TradingBot functionality driven by Relative Strength Index (RSI) for making buy, sell, or hold decisions.

## Usage

Create an instance of the `TradingBot` class by specifying a name and defining a trading strategy:

```ruby
bot = TradingBot.new("TradingBot demo", nil)
```
To activate the bot:

```ruby
bot.activate
```

To deactivate the bot:

```ruby
bot.deactivate
```
To formulate a trading strategy informed by market data:

```ruby
# Simulate price updates
price1 = 9
price2 = 8
price3 = 5
price4 = 1
price5 = 13

# Instantiate a bot object (replace "SMA Bot" with your preferred name).
bot = TradingBot.new("TradingBot demo", nil)

bot.activate

# Determine trading actions for each simulated price.
decision1 = bot.make_trade_decision(price1)
decision2 = bot.make_trade_decision(price2)
decision3 = bot.make_trade_decision(price3)
decision4 = bot.make_trade_decision(price4)
decision5 = bot.make_trade_decision(price5)

bot.deactivate
```

Note:

Atleast 15 values needs to be emmitted for prices to get a value as initial short term avg is set to 15
