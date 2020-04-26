name = 'Roger'

puts name.casecmp('RoGer') == 0
puts name.casecmp('DAVE') == 0

=begin
#casecmp performs a case-insensitive comparison, 
meaning it ignores the case of each character. When 
both compared strings are equal, #casecmp will return
0. That's why, in the solution, we needed the
comparison with 0. If the return value equals 0, 
then we know both strings are equal.
=end