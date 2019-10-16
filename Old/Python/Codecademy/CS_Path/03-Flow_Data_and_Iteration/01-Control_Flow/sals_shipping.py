# Ground Shipping Cost
def ground_shipping_cost(weight):

    if weight <= 2:
        price_per_pound = 1.50
    elif weight > 2 and weight <= 6:
        price_per_pound = 3.00
    elif weight > 6 and weight <= 10:
        price_per_pound = 4.00
    else:
        price_per_pound = 4.75

    return weight * price_per_pound + 20

# Premium Shipping Cost
premium_shipping_cost = 125.00

# Drone Shipping Cost
def drone_shipping_cost(weight):

    if weight <= 2:
        price_per_pound = 4.50
    elif weight > 2 and weight <= 6:
        price_per_pound = 9.00
    elif weight > 6 and weight <= 10:
        price_per_pound = 12.00
    else:
        price_per_pound = 14.25

    return weight * price_per_pound
    

# Return the cheapest shipping cost
def cheapest_shipping(weight):
    cost = ""
    method = ""
    drone = drone_shipping_cost(weight)
    ground = ground_shipping_cost(weight)
  
    if ground < drone:
        cost = ground
        method = "ground"
    else:
        cost = drone
        method = "drone"

    print(
        "You should ship using %s shipping, it will cost $%s"
        %(method, cost)
    
    )
    
cheapest_shipping(17)
cheapest_shipping(1.5)
cheapest_shipping(8.4)
  

