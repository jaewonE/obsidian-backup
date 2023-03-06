df <- data.frame(
  mom_age = c(37, 37, 20, 32, 24, 25, 31, 21, 23, 20, 23, 38, 26, 19, 31, 35, 28, 21, 32, 41, 26, 30, 34, 22, 34, 18, 18, 39, 23, 19, 33, 33, 28, 36),
  head_circum = c(27, 28, 22, 25, 27, 27, 28, 25, 28, 25, 35, 28, 26, 28, 28, 22, 28, 23, 27, 21, 27, 28, 30, 24, 29, 31, 23, 25, 26, 28, 29, 27, 27, 26),
  gest_age = c(29, 31, 27, 29, 29, 29, 33, 30, 32, 28, 31, 29, 27, 28, 28, 25, 28, 27, 27, 23, 29, 30, 33, 26, 35, 31, 25, 29, 30, 30, 33, 31, 29, 28),
  toxemia = c(0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0)
)
mom_age = df$mom_age
head_circum = df$head_circum
gest_age = df$gest_age
toxemia = df$toxemia

lm.fit = lm(head_circum ~ mom_age + gest_age + toxemia, data = df)
summary(lm.fit)

par(mfrow = c(1,3))
plot(gest_age, head_circum, xlab="임신 기간", ylab="머리 둘레", main="임신 기간과 머리 둘레의 관계")
abline(lm.fit$coefficients[1], lm.fit$coefficients[3], col="red")

plot(mom_age, head_circum, xlab="모체 나이", ylab="머리 둘레", main="모체 나이와 머리 둘레의 관계")
abline(lm.fit$coefficients[2], lm.fit$coefficients[3], col="blue")

plot(toxemia, head_circum, xlab="독감", ylab="머리 둘레", main="독감과 머리 둘레의 관계")
abline(lm.fit$coefficients[4], lm.fit$coefficients[3], col="green")
