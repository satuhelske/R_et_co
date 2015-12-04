

cars2 <- cars[cars$speed > 12,]
cars2$speed <- cars2$speed * 2
fit <- lm(dist ~ speed, data = cars2)
plot(fit$residuals)

plot(lm(dist ~ I(2*speed), data = cars[cars$speed > 12,])$residuals)

cars %>%
  subset(speed > 12) %>%
  transform(speed = 2 * speed) %>%
  lm(formula = dist ~ speed) %$%
  residuals %>%
  plot

