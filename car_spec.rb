require("minitest/autorun")
require( 'minitest/rg' )
require_relative("./car")

class TestCar < MiniTest::Test

  def setup()
    @car = Car.new(100, 0)
  end  
  
  def test_car_has_fuel_level_and_speed
    assert_equal(100, @car.fuel_level())
    assert_equal(0, @car.speed())

  end

  def test_car_can_accelerate 
    @car.accelerate()
    assert_equal(95, @car.fuel_level())
    assert_equal(10, @car.speed())
  end

  def test_car_can_break
    @car.accelerate()
    @car.accelerate()
    @car.break()
    assert_equal(10, @car.speed())
  end  
end  