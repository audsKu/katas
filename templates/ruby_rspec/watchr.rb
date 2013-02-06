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
  puts "\n\n--- Running all tests ---\n"
  run('rspec *_spec.rb') 
end
 
# --------------------------------------------------
# Signal Handling
# --------------------------------------------------

# Ctrl-\
Signal.trap('QUIT') do
  run_all_tests
end
 
# Ctrl-C
Signal.trap('INT') { abort("\n") }
