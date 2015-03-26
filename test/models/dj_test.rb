require 'test_helper'

class DjTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "should not save dj without name" do
	  dj = Dj.new
	  assert_not dj.save,
	   "Saved the dj without a name"
  end

  test "should report error" do
	  # some_undefined_variable is not defined elsewhere in the test case
	  some_undefined_variable
	  assert true
  end

  test 'should have unique name' do
    dj1 = Dj.create(:name => 'Ruby')
    assert dj1.valid?, "dj1 was not valid #{dj1.errors.inspect}"
    
    dj2 = Dj.new(:name => dj1.name)
    dj2.valid?
    assert_not dj2.save, "Saved the dj that isn't unique"
  end



  test 'should not add dj with too long name' do
  	dj = Dj.new(:name => "way toooooooo longgggasdfasdjkf;lajsdf;lkjasd;lfkjas;dlkfjka;lsdkfj;lasdkjf;laskdjf;laksjdf;lakjsdf;jas;dlkfkja;sdklfjka;sldkjfj;asldkjjf;alskdjfl;askdjf;laksdjf;laskdfjasdf;lkj")
	assert_not dj.save, "Saved long name Dj"  
  end



end