# -------------------------------------------
# Kata04: Data Munging
# http://codekata.com/kata/kata04-data-munging/
# -------------------------------------------

# Part One: Weather Data
# Output day number with smallest temperature spread.

input = File.open('./weather.dat'){|f| f.read } # Read the file as it is originally

# Break string into separate rows
# Why? Breaking this string into separate parts did not account for empty spaces in HDDay
data_rows = input.split("\n")

num_days = 30 # June has 30 days
smallest_spread = 100 # Hard coded to declare the variable <- Refactor!

for i in 1..num_days # For each day of the month

  # Row 0: Column titles
  # Row 1: Empty
  # Row 2..31: Content

  data = data_rows[i + 1].split

  # Column 1 is max temp
  # Column 2 is min temp
  spread = data[1].to_i - data[2].to_i

  if smallest_spread > spread
    smallest_spread = spread
  end
end

puts "The smallest temperature spread is #{smallest_spread}"
