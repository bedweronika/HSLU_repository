"A lecturer knows from experience that the average score in an exam is 77 points with a
standard deviation of 15 points. This semester the lecturer will teach two courses: one
has 25 participants, the other 64.
(∗∗) a) What is the probability that the approximate average examination result in the
course with 25 participants is between 72 and 82 points?
(∗) b) Repeat the calculation from part a) for the course with 64 participants. Compare
and interpret the results a) and b)"

miu_score <- 77 # points
std_dev <- 15   # points
n_course_1 <- 25
n_course_2 <- 64


# (∗∗) a) What is the probability that the approximate average examination result in the
# course with 25 participants is between 72 and 82 points?
# P(72<= X <= 82)
X_25 <- pnorm(82, miu_score, std_dev/sqrt(n_course_1)) - pnorm(72, miu_score, std_dev/sqrt(n_course_1))
X_25   # [1] 0.9044193

# (∗) b) Repeat the calculation from part a) for the course with 64 participants. Compare
# and interpret the results a) and b)"
# P(72<= X <= 82)
X_64 <- pnorm(82, miu_score, std_dev/sqrt(n_course_2)) - pnorm(72, miu_score, std_dev/sqrt(n_course_2))
X_64   # [1] 0.9923392

# The probability that the the participants will gain between 72 and 82 points is bigger 
# for the course with 64 participants and is equal to 99% then for 25 participants and is equal 90%.
# For both cases the probability is very height.
# For course with 25 participants only 10 percent will receive more then 82 points or less then 72 points
# For course with 64 participants only around 1 percent will receive more then 82 points or less then 72 points