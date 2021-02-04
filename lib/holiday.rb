require 'pry'

holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
end


def add_supply_to_winter_holidays(holiday_supplies, supply)
  holiday_supplies.each do |season, holiday_hash|
    if season == :winter
      holiday_hash.each do |holiday, supply|
        if holiday == :christmas || holiday == :new_years
          supply << "Balloons"
        end
      end
      holiday_supplies
    end
  end
end

def add_supply_to_memorial_day(holiday_supplies, supply)
  holiday_supplies[:spring][:memorial_day].push supply
end

def add_new_holiday_with_supplies(holiday_supplies, season, holiday, supply)
    holiday_supplies[season][holiday] = supply
  end

def all_winter_holiday_supplies(holiday_supplies)
  holiday_supplies[:winter].values.flatten
end

# def all_supplies_in_holidays(holiday_supplies)
#   new_list = holiday_supplies.to_s
#
#   new_list.each_line do |season, holiday_hash|
#     season.each_line {|s| "#{s.capitalize!}:"}
#     holiday_hash.each_line do |holiday, supply|
#     holiday.split.(&:capitalize!).join(' ')
#   end
#   end
# end


def all_supplies_in_holidays(holiday_supplies)
  holiday_supplies.each do |season, holiday_hash|
    puts season.to_s.capitalize!.insert(-1, ":")
    holiday_hash.each do |holiday, supply|
      holiday_array = holiday.to_s.split("_")
      cap_holiday = holiday_array.map do |word|
        word.capitalize.insert(-1, ":")
    end.join(" ")
    supply_list = supply.to_s
    puts cap_holiday.supply_list
    end
  end
end


  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
