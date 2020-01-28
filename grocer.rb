def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  outer_index =0
collector ={}
  hash_collection ={}

  while outer_index < collection.length do

      if name == collection[outer_index][:item]

            print collection[outer_index]
            return  collection[outer_index]
        end
outer_index += 1
          end

end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
cart_array = []
collector ={}
index = 0
count = 0

                 while index < cart.length do
index_find = 0
count =0
                     while index_find < cart.length do

                   if cart[index][:item] == cart[index_find][:item]
                                  count +=1

                       end


       index_find += 1
                     end
                    collector[:count] = count
                    collector[:item] = cart[index][:item]
                    collector[:price] = cart[index][:price]
                    collector[:clearance] = cart[index][:clearance]

                     cart_array << collector.dup
                     index += 1
                   end



return cart_array


end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
consolidate_cart(cart)
index = 0
while index < coupons.length
cart_item = find_item_by_name_in_collection(coupons[index][:item],cart)
couponed_item_name = "#{coupons[index][:item]} W/COUPON"
cart_item_with_coupon = find_item_by_name_in_collection(couponed_item_name, cart)
if cart_item  && cart_item[:count] >= coupons[index][:num]
  if cart_item_with_coupon
    cart_item_with_coupon[:count] += coupons[index][:num]
    cart_item[:count] -= coupons[index][:num]
  else
    cart_item_with_coupon =
    {
      :item => couponed_item_name,
      :price => coupons[index][:cost] / coupons[index][:num],
      :count => coupons[index][:num],
      :clearance => cart_item[:clearance]

    }
cart << cart_item_with_coupon
cart_item[:count] -= coupons[index][:num]
  end
end

  index +=1
end

cart

end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
