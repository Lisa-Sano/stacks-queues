require_relative './Queue'
require_relative './Stack'

waiting = DataStructs::Queue.new
workers = Stack.new

# start with 10 people in the list
people = %w(1 2 3 4 5 6 7 8 9 10)
people.each do |person|
  waiting.enqueue(person)
end

# hire six positions, in order that they're in the waiting list
num_positions = 6

num_positions.times do
  workers.push(waiting.dequeue)
end

# roll a die to determine how many ppl will be fired/hired
def roll_die
  Random.new.rand(1..6)
end

# fired people go to the end of the waiting list and first 
# ppl from waiting list get hired
def fire_and_hire(wait, work)
  num = roll_die
  num.times do
    wait.enqueue(work.pop)
  end
  num.times do
    work.push(wait.dequeue)
  end
end

# testing it out:
puts "STARTING workers: " + workers.to_s
puts "STARTING waiting: " + waiting.to_s

4.times do
  puts "Fired/hired: " + fire_and_hire(waiting, workers).to_s
  puts "Workers: " + workers.to_s
  puts "Waiting: " + waiting.to_s
end
