# plot fitted values against each other

ggplot(data = china) +
  geom_smooth(mapping = aes(x = SO2_dep, y = fitval), colour = "red") +
  geom_smooth(mapping = aes(x = SO2_dep, y = sq.fitv))

# plot fitted values against residuals for linear model

china = mutate(china,
        resid = Revenue_loss - y_hat)

ggplot(china, aes(y_hat, resid)) +
  geom_point() +
  geom_smooth(se = FALSE)
  geom_hline(yintercept = 0)


