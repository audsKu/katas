# --------------------------------------------------
# Rules
# --------------------------------------------------
watch( '.*\.coffee' ) {|md| run_all_tests }
 
# --------------------------------------------------
# Helpers
# --------------------------------------------------
def run(cmd)
  puts(cmd)
  system(cmd)
end

def run_all_tests
  run("rm test.js")
  run("coffee -o . test.coffee")
  run("nodeunit test.js")
end
 
# --------------------------------------------------
# Signal Handling
# --------------------------------------------------

# Ctrl-\
Signal.trap('QUIT') do
  puts " --- Running all tests ---\n\n"
  run_all_tests
end
 
# Ctrl-C
Signal.trap('INT') { abort("\n") }
