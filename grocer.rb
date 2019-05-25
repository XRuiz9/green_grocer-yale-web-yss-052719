require 'pry'
def consolidate_cart(cart)
  concart = {}
  cart.each do |item|
    item.each do |name, info|
      if concart.keys.include?(name)
        concart[name][:count] += 1
      else
        item[name][:count] = 1
        concart[name] = item[name]
      end
    end
  end
  concart
end

def apply_coupons(cart, coupons)
  coupcart = {}
  newItem = ""
  cart.each do |item, info|
    coupcart[item] = info
    coupons.each do |key, value|
      if key == :item && item == value
        newItem = item + "W/COUPON"
      end
    end
  end
  binding.pry
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
