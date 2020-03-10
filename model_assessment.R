sim <- 2:11
obs <- 1:10

model.assess <- function(sim, obs) {require(hydroGOF)
  a.mae <- mae(sim = sim, obs = obs)
  b.rmse <- rmse(sim = sim, obs = obs)
  c.pbias <- pbias(sim = sim, obs = obs)
  Values <- c(a.mae, b.rmse, c.pbias)
  Names <- c('mae', 'rmse', 'pbias')
  stats <- tibble(Names, Values)
  return(stats)
}

ma <- model.assess(sim, obs)