$(document).ready(function(){
  
  test("a basic test example", function() {
    ok( true, "this test is fine" );
    var value = "hello";
    equal( value, "hello", "We expect value to be hello" );
  });

  test("first test within module", function() {
    ok( true, "all pass" );
  });

  test("some other test", function() {
    ok( true );
    equal( true, true );
  });

});
