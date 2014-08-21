module ApplicationHelper
  def celvin_round(x)
    return (x - 273.15).round
  end
end
