data{
  int N;
  int I;
  int G;
  int died[N];
  vector[N] days_survived;
  vector[N] group_size_s;
  vector[N] age_s;
  vector[N] rank_s;
  int female[N];
  int group[N];
  vector[N] ind_rate_sd;
  int index[N];
  vector[N] ind_rate_mean;
}

parameters{
  vector[N] true_rate;
  real base_rate;
  vector[I] a_individual;
  vector[G] a_group;
  real b_group_size;
  real b_age;
  real b_rank;
  real b_sociality;
}

model{
  vector[N] lambda;
  vector[N] mu;
  
  b_sociality ~ normal( 0 , 1 );
  b_rank ~ normal( 0 , 1 );
  b_age ~ normal( 0 , 1 );
  b_group_size ~ normal( 0 , 1 );
  a_group ~ normal( 0 , 1 );
  a_individual ~ normal( 0 , 1 );
  base_rate ~ normal( 8 , 0.5 );
  true_rate ~ normal( ind_rate_mean[index] , ind_rate_sd[index] );
  
  for ( i in 1:N ) {
    mu[i] = base_rate + a_group[group[i]] + a_individual[female[i]] + b_sociality * true_rate[index[i]] + b_rank * rank_s[i] + b_age * age_s[i] + b_group_size * group_size_s[i];
    mu[i] = exp(mu[i]);
  }
  
  for ( i in 1:N ) {
    lambda[i] = 1/mu[i];
  }
  for ( i in 1:N ) 
    if ( died[i] == 0 ) target += exponential_lccdf(days_survived[i] | lambda[i]);
    for ( i in 1:N ) 
      if ( died[i] == 1 ) days_survived[i] ~ exponential( lambda[i] );
}