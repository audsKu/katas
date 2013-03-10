# --------------------------------------------------
# Rules
# --------------------------------------------------
watch( '.*\.rb' ) {|md| run_all_tests }
 
# --------------------------------------------------
# Helpers
# --------------------------------------------------
def run(cmd)
  puts(cmd)
  system(cmd)
end
 
def run_all_tests
  run("ruby test.rb") 
end
 
# --------------------------------------------------
# Signal Handling
# --------------------------------------------------

# Ctrl-\
Signal.trap("QUIT") do
  puts " --- Running all tests ---\n\n"
  run_all_tests
end
 
# Ctrl-C
Signal.trap("INT") { abort("\n") }
