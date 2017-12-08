# add a new column for squared deposition for quadratic damage function

china = mutate(china,
        depsq = SO2_dep^2)

china$depsq

quaddmg = lm(formula = Revenue_loss ~ SO2_dep + depsq, data = china)

quaddmg
summary(quaddmg)$r.squared
summary(lineardmg)$r.squared

# we find that the linear damage function fits the data better

# Total damage function (% of revenue) 
# y_hat = -.0819e-01 + 1.713e-03*SO2_dep + 8.640e-08 * depsq
# Marginal Damage Function:
# 1.713e-03 + 8.640e-08 * SO2_dep

quadx = 1.713e-3
quadx2 = 8.640e-8
quad.int = -.0819e-1

china = mutate(china, mgdmg = 1.713467e-3 + (8.640e-8*2)*SO2_dep)

ggplot(data = china) +
  geom_point(mapping = aes(x = SO2_dep, y = mgdmg)) +
  geom_smooth(mapping = aes(x = SO2_dep, y = mgdmg))
  
china = mutate(china,
        sq.fitv = -8.916e-1 + SO2_dep*1.713e-3 + (SO2_dep^2)*8.640e-8,
        fitval = SO2_dep*x + b)

china
