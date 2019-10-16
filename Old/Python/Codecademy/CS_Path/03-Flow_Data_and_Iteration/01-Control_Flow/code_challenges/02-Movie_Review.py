# Movie Review
# ============
def movie_review(rating):
    # if rating is less than or equal to 5
  if rating <= 5:
      return "Avoid at all costs!"
  # if rating is between 5 and 9
  elif rating > 5 and rating < 9:
      return "This one was fun."
  elif rating >= 9:
      return "Outstanding!"

print(movie_review(9))
# should print "Outstanding!"
print(movie_review(4))
# should print "Avoid at all costs!"
print(movie_review(6))
# should print "This one was fun."
