View(STartups_Data)

model <- lm(Startups ~ Research + Patents + Duration, data = STartups_Data)

summary(model)

new_data <- data.frame(Research = 120, Patents = 8, Duration = 20)
predicted_startups <- predict(model, newdata = new_data)
cat("Predicted number of startups:", predicted_startups)
