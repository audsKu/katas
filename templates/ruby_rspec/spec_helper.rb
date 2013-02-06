RSpec.configure do |c|
  c.color_enabled = true
  # c.filter_run :focus => true
  # c.formatter = :documentation
  c.run_all_when_everything_filtered = true 
  c.treat_symbols_as_metadata_keys_with_true_values = true
end