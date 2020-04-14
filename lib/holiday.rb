require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash.each do |season, season_hash|
    if season == :summer
      season_hash.each do |holiday, holiday_array|
        if holiday == :fourth_of_july
          return holiday_array[1]
        end
      end
    end
  end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, season_hash|
    if season == :winter
      season_hash.each do |holiday, holiday_array|
        holiday_array << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, season_hash|
    if season == :spring
      season_hash.each do |holiday, holiday_array|
        holiday_array << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |season_target, season_hash|
    if season_target == season
      #binding.pry
      holiday_hash[season_target] = {holiday_name => supply_array}
      holiday_hash
    end
  end
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  supplies = []
  holiday_hash.each do |season, season_hash|
    season_hash.each do |holiday, holiday_array|
      holiday_array.each {|supply| supplies << supply}
    end
  end
  supplies
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, season_hash|
    puts("#{season.capitalize}:")
    season_hash.each do |holiday, holiday_array|
      holiday = holiday.to_s
      holiday = holiday.sub("_"," ")
      puts("  #{holiday.capitalize}: #{holiday_array.join(', ')}")
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
