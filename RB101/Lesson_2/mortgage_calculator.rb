# Mortgage calculator

puts "Welcome to mortgage calculator, What's your name?"
name = gets.chomp
puts "Nice to meet you, #{name.capitalize}"

puts "What's your total loan amount?"
loan_amount = gets.chomp.to_i

puts "what's the APR?"
apr = gets.chomp.to_f
m_int = apr / 1200

puts "What's your loan duration in years?"
duration = gets.chomp.to_i
loan_duration_m = duration * 12

m_payments = loan_amount * (m_int / (1 - ((1 + m_int)**(-loan_duration_m))))

puts "Well, Mr. #{name.capitalize}, your monthly mortgage payments will be - $#{format('%.2f', m_payments)} CAD."
