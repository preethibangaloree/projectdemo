class RestaurantStatusJob < ApplicationJob
  queue_as :default

  def perform(restaurant_id, status)
    sleep(5.minutes)
    restaurant = Restaurant.find(restaurant_id)
    restaurant.update(status: status)
  end
end
