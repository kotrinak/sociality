model_code_0 <- "
data{
	int N_group;
    
    int N_BB2002;
    int N_BB2003;
    int N_BB2004;
    int N_BB2005;
    int N_BB2006;
    int N_BB2007;
    int N_BB2008;
    int N_BB2009;
    int N_BB2010;
    int N_BB2011;
    int N_BB2012;
    int N_BB2013;
    int N_BB2014;
    int N_BB2015;
    int N_BB2016;
    int N_BB2017;
    int N_BB2018;
    int N_CC2012;
    int N_CC2013;
    int N_CC2014;
    int N_CC2015;
    int N_CC2016;
    int N_CC2017;
    int N_CC2018;
    int N_DD2007;
    int N_DD2008;
    int N_DD2009;
    int N_DD2010;
    int N_DD2011;
    int N_DD2012;
    int N_DD2013;
    int N_EE2012;
    int N_EE2013;
    int N_EE2014;
    int N_EE2015;
    int N_EE2016;
    int N_EE2017;
    int N_EE2018;
    int N_GG2002;
    int N_GG2003;
    int N_GG2004;
    int N_GG2005;
    int N_GG2006;
    int N_GG2007;
    int N_GG2008;
    int N_GG2009;
    int N_GG2010;
    int N_GG2011;
    int N_GG2012;
    int N_GG2013;
    int N_GG2014;
    int N_GG2015;
    int N_GG2016;
    int N_GG2017;
    int N_GG2018;
    int N_HH2003;
    int N_HH2004;
    int N_HH2005;
    int N_HH2006;
    int N_HH2007;
    int N_HH2008;
    int N_HH2009;
    int N_HH2010;
    int N_HH2011;
    int N_HH2012;
    int N_HH2013;
    int N_HH2014;
    int N_HH2015;
    int N_HH2016;
    int N_HH2017;
    int N_HH2018;
    int N_KK2004;
    int N_KK2005;
    int N_KK2006;
    int N_KK2007;
    int N_KK2008;
    int N_KK2009;
    int N_KK2010;
    int N_KK2011;
    int N_KK2012;
    int N_KK2013;
    int N_KK2014;
    int N_KK2015;
    int N_KK2016;
    int N_KK2017;
    int N_KK2018;
    int N_NN2008;
    int N_NN2009;
    int N_NN2010;
    int N_NN2011;
    int N_NN2012;
    int N_NN2013;
    int N_NN2014;
    int N_NN2015;
    int N_NN2016;
    int N_NN2017;
    int N_NN2018;
    int N_SS2007;
    int N_SS2008;
    int N_SS2009;
    int N_SS2010;
    int N_SS2011;
    int N_SS2012;
    int N_SS2013;
    int N_SS2014;
    int N_SS2015;
    int N_SS2016;
    int N_SS2017;
    int N_SS2018;
    int N_VV2002;
    int N_VV2003;
    int N_VV2004;
    int N_VV2005;
    int N_VV2006;
    int N_VV2007;
    int N_VV2008;
    int N_VV2009;
    int N_VV2010;
    int N_VV2011;
    int N_VV2012;
    int N_VV2013;
    int N_VV2014;
    int N_VV2015;
    int N_VV2016;
    int N_VV2017;
    int N_VV2018;
    int N_ZZ2003;
    int N_ZZ2005;
    int N_ZZ2006;
    int N_ZZ2008;
    int N_ZZ2009;
    int N_ZZ2010;
    int N_ZZ2011;
    int N_ZZ2012;
    int N_ZZ2013;
    int N_ZZ2014;
    int N_ZZ2015;
    int N_ZZ2016;
    int N_ZZ2017;
    int N_ZZ2018;
    int N_BB2019;
    int N_CC2019;
    int N_EE2019;
    int N_GG2019;
    int N_HH2019;
    int N_KK2019;
    int N_SS2019;
    int N_VV2019;
    int N_ZZ2019;

    
    int N_i__j_ID_BB2002;
    int N_i__j_ID_BB2003;
    int N_i__j_ID_BB2004;
    int N_i__j_ID_BB2005;
    int N_i__j_ID_BB2006;
    int N_i__j_ID_BB2007;
    int N_i__j_ID_BB2008;
    int N_i__j_ID_BB2009;
    int N_i__j_ID_BB2010;
    int N_i__j_ID_BB2011;
    int N_i__j_ID_BB2012;
    int N_i__j_ID_BB2013;
    int N_i__j_ID_BB2014;
    int N_i__j_ID_BB2015;
    int N_i__j_ID_BB2016;
    int N_i__j_ID_BB2017;
    int N_i__j_ID_BB2018;
    int N_i__j_ID_CC2012;
    int N_i__j_ID_CC2013;
    int N_i__j_ID_CC2014;
    int N_i__j_ID_CC2015;
    int N_i__j_ID_CC2016;
    int N_i__j_ID_CC2017;
    int N_i__j_ID_CC2018;
    int N_i__j_ID_DD2007;
    int N_i__j_ID_DD2008;
    int N_i__j_ID_DD2009;
    int N_i__j_ID_DD2010;
    int N_i__j_ID_DD2011;
    int N_i__j_ID_DD2012;
    int N_i__j_ID_DD2013;
    int N_i__j_ID_EE2012;
    int N_i__j_ID_EE2013;
    int N_i__j_ID_EE2014;
    int N_i__j_ID_EE2015;
    int N_i__j_ID_EE2016;
    int N_i__j_ID_EE2017;
    int N_i__j_ID_EE2018;
    int N_i__j_ID_GG2002;
    int N_i__j_ID_GG2003;
    int N_i__j_ID_GG2004;
    int N_i__j_ID_GG2005;
    int N_i__j_ID_GG2006;
    int N_i__j_ID_GG2007;
    int N_i__j_ID_GG2008;
    int N_i__j_ID_GG2009;
    int N_i__j_ID_GG2010;
    int N_i__j_ID_GG2011;
    int N_i__j_ID_GG2012;
    int N_i__j_ID_GG2013;
    int N_i__j_ID_GG2014;
    int N_i__j_ID_GG2015;
    int N_i__j_ID_GG2016;
    int N_i__j_ID_GG2017;
    int N_i__j_ID_GG2018;
    int N_i__j_ID_HH2003;
    int N_i__j_ID_HH2004;
    int N_i__j_ID_HH2005;
    int N_i__j_ID_HH2006;
    int N_i__j_ID_HH2007;
    int N_i__j_ID_HH2008;
    int N_i__j_ID_HH2009;
    int N_i__j_ID_HH2010;
    int N_i__j_ID_HH2011;
    int N_i__j_ID_HH2012;
    int N_i__j_ID_HH2013;
    int N_i__j_ID_HH2014;
    int N_i__j_ID_HH2015;
    int N_i__j_ID_HH2016;
    int N_i__j_ID_HH2017;
    int N_i__j_ID_HH2018;
    int N_i__j_ID_KK2004;
    int N_i__j_ID_KK2005;
    int N_i__j_ID_KK2006;
    int N_i__j_ID_KK2007;
    int N_i__j_ID_KK2008;
    int N_i__j_ID_KK2009;
    int N_i__j_ID_KK2010;
    int N_i__j_ID_KK2011;
    int N_i__j_ID_KK2012;
    int N_i__j_ID_KK2013;
    int N_i__j_ID_KK2014;
    int N_i__j_ID_KK2015;
    int N_i__j_ID_KK2016;
    int N_i__j_ID_KK2017;
    int N_i__j_ID_KK2018;
    int N_i__j_ID_NN2008;
    int N_i__j_ID_NN2009;
    int N_i__j_ID_NN2010;
    int N_i__j_ID_NN2011;
    int N_i__j_ID_NN2012;
    int N_i__j_ID_NN2013;
    int N_i__j_ID_NN2014;
    int N_i__j_ID_NN2015;
    int N_i__j_ID_NN2016;
    int N_i__j_ID_NN2017;
    int N_i__j_ID_NN2018;
    int N_i__j_ID_SS2007;
    int N_i__j_ID_SS2008;
    int N_i__j_ID_SS2009;
    int N_i__j_ID_SS2010;
    int N_i__j_ID_SS2011;
    int N_i__j_ID_SS2012;
    int N_i__j_ID_SS2013;
    int N_i__j_ID_SS2014;
    int N_i__j_ID_SS2015;
    int N_i__j_ID_SS2016;
    int N_i__j_ID_SS2017;
    int N_i__j_ID_SS2018;
    int N_i__j_ID_VV2002;
    int N_i__j_ID_VV2003;
    int N_i__j_ID_VV2004;
    int N_i__j_ID_VV2005;
    int N_i__j_ID_VV2006;
    int N_i__j_ID_VV2007;
    int N_i__j_ID_VV2008;
    int N_i__j_ID_VV2009;
    int N_i__j_ID_VV2010;
    int N_i__j_ID_VV2011;
    int N_i__j_ID_VV2012;
    int N_i__j_ID_VV2013;
    int N_i__j_ID_VV2014;
    int N_i__j_ID_VV2015;
    int N_i__j_ID_VV2016;
    int N_i__j_ID_VV2017;
    int N_i__j_ID_VV2018;
    int N_i__j_ID_ZZ2003;
    int N_i__j_ID_ZZ2005;
    int N_i__j_ID_ZZ2006;
    int N_i__j_ID_ZZ2008;
    int N_i__j_ID_ZZ2009;
    int N_i__j_ID_ZZ2010;
    int N_i__j_ID_ZZ2011;
    int N_i__j_ID_ZZ2012;
    int N_i__j_ID_ZZ2013;
    int N_i__j_ID_ZZ2014;
    int N_i__j_ID_ZZ2015;
    int N_i__j_ID_ZZ2016;
    int N_i__j_ID_ZZ2017;
    int N_i__j_ID_ZZ2018;
    int N_i__j_ID_BB2019;
    int N_i__j_ID_CC2019;
    int N_i__j_ID_EE2019;
    int N_i__j_ID_GG2019;
    int N_i__j_ID_HH2019;
    int N_i__j_ID_KK2019;
    int N_i__j_ID_SS2019;
    int N_i__j_ID_VV2019;
    int N_i__j_ID_ZZ2019;
    
    
    int N_dyads_BB2002;
    int N_dyads_BB2003;
    int N_dyads_BB2004;
    int N_dyads_BB2005;
    int N_dyads_BB2006;
    int N_dyads_BB2007;
    int N_dyads_BB2008;
    int N_dyads_BB2009;
    int N_dyads_BB2010;
    int N_dyads_BB2011;
    int N_dyads_BB2012;
    int N_dyads_BB2013;
    int N_dyads_BB2014;
    int N_dyads_BB2015;
    int N_dyads_BB2016;
    int N_dyads_BB2017;
    int N_dyads_BB2018;
    int N_dyads_CC2012;
    int N_dyads_CC2013;
    int N_dyads_CC2014;
    int N_dyads_CC2015;
    int N_dyads_CC2016;
    int N_dyads_CC2017;
    int N_dyads_CC2018;
    int N_dyads_DD2007;
    int N_dyads_DD2008;
    int N_dyads_DD2009;
    int N_dyads_DD2010;
    int N_dyads_DD2011;
    int N_dyads_DD2012;
    int N_dyads_DD2013;
    int N_dyads_EE2012;
    int N_dyads_EE2013;
    int N_dyads_EE2014;
    int N_dyads_EE2015;
    int N_dyads_EE2016;
    int N_dyads_EE2017;
    int N_dyads_EE2018;
    int N_dyads_GG2002;
    int N_dyads_GG2003;
    int N_dyads_GG2004;
    int N_dyads_GG2005;
    int N_dyads_GG2006;
    int N_dyads_GG2007;
    int N_dyads_GG2008;
    int N_dyads_GG2009;
    int N_dyads_GG2010;
    int N_dyads_GG2011;
    int N_dyads_GG2012;
    int N_dyads_GG2013;
    int N_dyads_GG2014;
    int N_dyads_GG2015;
    int N_dyads_GG2016;
    int N_dyads_GG2017;
    int N_dyads_GG2018;
    int N_dyads_HH2003;
    int N_dyads_HH2004;
    int N_dyads_HH2005;
    int N_dyads_HH2006;
    int N_dyads_HH2007;
    int N_dyads_HH2008;
    int N_dyads_HH2009;
    int N_dyads_HH2010;
    int N_dyads_HH2011;
    int N_dyads_HH2012;
    int N_dyads_HH2013;
    int N_dyads_HH2014;
    int N_dyads_HH2015;
    int N_dyads_HH2016;
    int N_dyads_HH2017;
    int N_dyads_HH2018;
    int N_dyads_KK2004;
    int N_dyads_KK2005;
    int N_dyads_KK2006;
    int N_dyads_KK2007;
    int N_dyads_KK2008;
    int N_dyads_KK2009;
    int N_dyads_KK2010;
    int N_dyads_KK2011;
    int N_dyads_KK2012;
    int N_dyads_KK2013;
    int N_dyads_KK2014;
    int N_dyads_KK2015;
    int N_dyads_KK2016;
    int N_dyads_KK2017;
    int N_dyads_KK2018;
    int N_dyads_NN2008;
    int N_dyads_NN2009;
    int N_dyads_NN2010;
    int N_dyads_NN2011;
    int N_dyads_NN2012;
    int N_dyads_NN2013;
    int N_dyads_NN2014;
    int N_dyads_NN2015;
    int N_dyads_NN2016;
    int N_dyads_NN2017;
    int N_dyads_NN2018;
    int N_dyads_SS2007;
    int N_dyads_SS2008;
    int N_dyads_SS2009;
    int N_dyads_SS2010;
    int N_dyads_SS2011;
    int N_dyads_SS2012;
    int N_dyads_SS2013;
    int N_dyads_SS2014;
    int N_dyads_SS2015;
    int N_dyads_SS2016;
    int N_dyads_SS2017;
    int N_dyads_SS2018;
    int N_dyads_VV2002;
    int N_dyads_VV2003;
    int N_dyads_VV2004;
    int N_dyads_VV2005;
    int N_dyads_VV2006;
    int N_dyads_VV2007;
    int N_dyads_VV2008;
    int N_dyads_VV2009;
    int N_dyads_VV2010;
    int N_dyads_VV2011;
    int N_dyads_VV2012;
    int N_dyads_VV2013;
    int N_dyads_VV2014;
    int N_dyads_VV2015;
    int N_dyads_VV2016;
    int N_dyads_VV2017;
    int N_dyads_VV2018;
    int N_dyads_ZZ2003;
    int N_dyads_ZZ2005;
    int N_dyads_ZZ2006;
    int N_dyads_ZZ2008;
    int N_dyads_ZZ2009;
    int N_dyads_ZZ2010;
    int N_dyads_ZZ2011;
    int N_dyads_ZZ2012;
    int N_dyads_ZZ2013;
    int N_dyads_ZZ2014;
    int N_dyads_ZZ2015;
    int N_dyads_ZZ2016;
    int N_dyads_ZZ2017;
    int N_dyads_ZZ2018;
    int N_dyads_BB2019;
    int N_dyads_CC2019;
    int N_dyads_EE2019;
    int N_dyads_GG2019;
    int N_dyads_HH2019;
    int N_dyads_KK2019;
    int N_dyads_SS2019;
    int N_dyads_VV2019;
    int N_dyads_ZZ2019;

    
    int y_BB2002[N_BB2002];
    int y_BB2003[N_BB2003];
    int y_BB2004[N_BB2004];
    int y_BB2005[N_BB2005];
    int y_BB2006[N_BB2006];
    int y_BB2007[N_BB2007];
    int y_BB2008[N_BB2008];
    int y_BB2009[N_BB2009];
    int y_BB2010[N_BB2010];
    int y_BB2011[N_BB2011];
    int y_BB2012[N_BB2012];
    int y_BB2013[N_BB2013];
    int y_BB2014[N_BB2014];
    int y_BB2015[N_BB2015];
    int y_BB2016[N_BB2016];
    int y_BB2017[N_BB2017];
    int y_BB2018[N_BB2018];
    int y_CC2012[N_CC2012];
    int y_CC2013[N_CC2013];
    int y_CC2014[N_CC2014];
    int y_CC2015[N_CC2015];
    int y_CC2016[N_CC2016];
    int y_CC2017[N_CC2017];
    int y_CC2018[N_CC2018];
    int y_DD2007[N_DD2007];
    int y_DD2008[N_DD2008];
    int y_DD2009[N_DD2009];
    int y_DD2010[N_DD2010];
    int y_DD2011[N_DD2011];
    int y_DD2012[N_DD2012];
    int y_DD2013[N_DD2013];
    int y_EE2012[N_EE2012];
    int y_EE2013[N_EE2013];
    int y_EE2014[N_EE2014];
    int y_EE2015[N_EE2015];
    int y_EE2016[N_EE2016];
    int y_EE2017[N_EE2017];
    int y_EE2018[N_EE2018];
    int y_GG2002[N_GG2002];
    int y_GG2003[N_GG2003];
    int y_GG2004[N_GG2004];
    int y_GG2005[N_GG2005];
    int y_GG2006[N_GG2006];
    int y_GG2007[N_GG2007];
    int y_GG2008[N_GG2008];
    int y_GG2009[N_GG2009];
    int y_GG2010[N_GG2010];
    int y_GG2011[N_GG2011];
    int y_GG2012[N_GG2012];
    int y_GG2013[N_GG2013];
    int y_GG2014[N_GG2014];
    int y_GG2015[N_GG2015];
    int y_GG2016[N_GG2016];
    int y_GG2017[N_GG2017];
    int y_GG2018[N_GG2018];
    int y_HH2003[N_HH2003];
    int y_HH2004[N_HH2004];
    int y_HH2005[N_HH2005];
    int y_HH2006[N_HH2006];
    int y_HH2007[N_HH2007];
    int y_HH2008[N_HH2008];
    int y_HH2009[N_HH2009];
    int y_HH2010[N_HH2010];
    int y_HH2011[N_HH2011];
    int y_HH2012[N_HH2012];
    int y_HH2013[N_HH2013];
    int y_HH2014[N_HH2014];
    int y_HH2015[N_HH2015];
    int y_HH2016[N_HH2016];
    int y_HH2017[N_HH2017];
    int y_HH2018[N_HH2018];
    int y_KK2004[N_KK2004];
    int y_KK2005[N_KK2005];
    int y_KK2006[N_KK2006];
    int y_KK2007[N_KK2007];
    int y_KK2008[N_KK2008];
    int y_KK2009[N_KK2009];
    int y_KK2010[N_KK2010];
    int y_KK2011[N_KK2011];
    int y_KK2012[N_KK2012];
    int y_KK2013[N_KK2013];
    int y_KK2014[N_KK2014];
    int y_KK2015[N_KK2015];
    int y_KK2016[N_KK2016];
    int y_KK2017[N_KK2017];
    int y_KK2018[N_KK2018];
    int y_NN2008[N_NN2008];
    int y_NN2009[N_NN2009];
    int y_NN2010[N_NN2010];
    int y_NN2011[N_NN2011];
    int y_NN2012[N_NN2012];
    int y_NN2013[N_NN2013];
    int y_NN2014[N_NN2014];
    int y_NN2015[N_NN2015];
    int y_NN2016[N_NN2016];
    int y_NN2017[N_NN2017];
    int y_NN2018[N_NN2018];
    int y_SS2007[N_SS2007];
    int y_SS2008[N_SS2008];
    int y_SS2009[N_SS2009];
    int y_SS2010[N_SS2010];
    int y_SS2011[N_SS2011];
    int y_SS2012[N_SS2012];
    int y_SS2013[N_SS2013];
    int y_SS2014[N_SS2014];
    int y_SS2015[N_SS2015];
    int y_SS2016[N_SS2016];
    int y_SS2017[N_SS2017];
    int y_SS2018[N_SS2018];
    int y_VV2002[N_VV2002];
    int y_VV2003[N_VV2003];
    int y_VV2004[N_VV2004];
    int y_VV2005[N_VV2005];
    int y_VV2006[N_VV2006];
    int y_VV2007[N_VV2007];
    int y_VV2008[N_VV2008];
    int y_VV2009[N_VV2009];
    int y_VV2010[N_VV2010];
    int y_VV2011[N_VV2011];
    int y_VV2012[N_VV2012];
    int y_VV2013[N_VV2013];
    int y_VV2014[N_VV2014];
    int y_VV2015[N_VV2015];
    int y_VV2016[N_VV2016];
    int y_VV2017[N_VV2017];
    int y_VV2018[N_VV2018];
    int y_ZZ2003[N_ZZ2003];
    int y_ZZ2005[N_ZZ2005];
    int y_ZZ2006[N_ZZ2006];
    int y_ZZ2008[N_ZZ2008];
    int y_ZZ2009[N_ZZ2009];
    int y_ZZ2010[N_ZZ2010];
    int y_ZZ2011[N_ZZ2011];
    int y_ZZ2012[N_ZZ2012];
    int y_ZZ2013[N_ZZ2013];
    int y_ZZ2014[N_ZZ2014];
    int y_ZZ2015[N_ZZ2015];
    int y_ZZ2016[N_ZZ2016];
    int y_ZZ2017[N_ZZ2017];
    int y_ZZ2018[N_ZZ2018];
    int y_BB2019[N_BB2019];
    int y_CC2019[N_CC2019];
    int y_EE2019[N_EE2019];
    int y_GG2019[N_GG2019];
    int y_HH2019[N_HH2019];
    int y_KK2019[N_KK2019];
    int y_SS2019[N_SS2019];
    int y_VV2019[N_VV2019];
    int y_ZZ2019[N_ZZ2019];

	  
	  
    int denominator_BB2002[N_BB2002];
    int denominator_BB2003[N_BB2003];
    int denominator_BB2004[N_BB2004];
    int denominator_BB2005[N_BB2005];
    int denominator_BB2006[N_BB2006];
    int denominator_BB2007[N_BB2007];
    int denominator_BB2008[N_BB2008];
    int denominator_BB2009[N_BB2009];
    int denominator_BB2010[N_BB2010];
    int denominator_BB2011[N_BB2011];
    int denominator_BB2012[N_BB2012];
    int denominator_BB2013[N_BB2013];
    int denominator_BB2014[N_BB2014];
    int denominator_BB2015[N_BB2015];
    int denominator_BB2016[N_BB2016];
    int denominator_BB2017[N_BB2017];
    int denominator_BB2018[N_BB2018];
    int denominator_CC2012[N_CC2012];
    int denominator_CC2013[N_CC2013];
    int denominator_CC2014[N_CC2014];
    int denominator_CC2015[N_CC2015];
    int denominator_CC2016[N_CC2016];
    int denominator_CC2017[N_CC2017];
    int denominator_CC2018[N_CC2018];
    int denominator_DD2007[N_DD2007];
    int denominator_DD2008[N_DD2008];
    int denominator_DD2009[N_DD2009];
    int denominator_DD2010[N_DD2010];
    int denominator_DD2011[N_DD2011];
    int denominator_DD2012[N_DD2012];
    int denominator_DD2013[N_DD2013];
    int denominator_EE2012[N_EE2012];
    int denominator_EE2013[N_EE2013];
    int denominator_EE2014[N_EE2014];
    int denominator_EE2015[N_EE2015];
    int denominator_EE2016[N_EE2016];
    int denominator_EE2017[N_EE2017];
    int denominator_EE2018[N_EE2018];
    int denominator_GG2002[N_GG2002];
    int denominator_GG2003[N_GG2003];
    int denominator_GG2004[N_GG2004];
    int denominator_GG2005[N_GG2005];
    int denominator_GG2006[N_GG2006];
    int denominator_GG2007[N_GG2007];
    int denominator_GG2008[N_GG2008];
    int denominator_GG2009[N_GG2009];
    int denominator_GG2010[N_GG2010];
    int denominator_GG2011[N_GG2011];
    int denominator_GG2012[N_GG2012];
    int denominator_GG2013[N_GG2013];
    int denominator_GG2014[N_GG2014];
    int denominator_GG2015[N_GG2015];
    int denominator_GG2016[N_GG2016];
    int denominator_GG2017[N_GG2017];
    int denominator_GG2018[N_GG2018];
    int denominator_HH2003[N_HH2003];
    int denominator_HH2004[N_HH2004];
    int denominator_HH2005[N_HH2005];
    int denominator_HH2006[N_HH2006];
    int denominator_HH2007[N_HH2007];
    int denominator_HH2008[N_HH2008];
    int denominator_HH2009[N_HH2009];
    int denominator_HH2010[N_HH2010];
    int denominator_HH2011[N_HH2011];
    int denominator_HH2012[N_HH2012];
    int denominator_HH2013[N_HH2013];
    int denominator_HH2014[N_HH2014];
    int denominator_HH2015[N_HH2015];
    int denominator_HH2016[N_HH2016];
    int denominator_HH2017[N_HH2017];
    int denominator_HH2018[N_HH2018];
    int denominator_KK2004[N_KK2004];
    int denominator_KK2005[N_KK2005];
    int denominator_KK2006[N_KK2006];
    int denominator_KK2007[N_KK2007];
    int denominator_KK2008[N_KK2008];
    int denominator_KK2009[N_KK2009];
    int denominator_KK2010[N_KK2010];
    int denominator_KK2011[N_KK2011];
    int denominator_KK2012[N_KK2012];
    int denominator_KK2013[N_KK2013];
    int denominator_KK2014[N_KK2014];
    int denominator_KK2015[N_KK2015];
    int denominator_KK2016[N_KK2016];
    int denominator_KK2017[N_KK2017];
    int denominator_KK2018[N_KK2018];
    int denominator_NN2008[N_NN2008];
    int denominator_NN2009[N_NN2009];
    int denominator_NN2010[N_NN2010];
    int denominator_NN2011[N_NN2011];
    int denominator_NN2012[N_NN2012];
    int denominator_NN2013[N_NN2013];
    int denominator_NN2014[N_NN2014];
    int denominator_NN2015[N_NN2015];
    int denominator_NN2016[N_NN2016];
    int denominator_NN2017[N_NN2017];
    int denominator_NN2018[N_NN2018];
    int denominator_SS2007[N_SS2007];
    int denominator_SS2008[N_SS2008];
    int denominator_SS2009[N_SS2009];
    int denominator_SS2010[N_SS2010];
    int denominator_SS2011[N_SS2011];
    int denominator_SS2012[N_SS2012];
    int denominator_SS2013[N_SS2013];
    int denominator_SS2014[N_SS2014];
    int denominator_SS2015[N_SS2015];
    int denominator_SS2016[N_SS2016];
    int denominator_SS2017[N_SS2017];
    int denominator_SS2018[N_SS2018];
    int denominator_VV2002[N_VV2002];
    int denominator_VV2003[N_VV2003];
    int denominator_VV2004[N_VV2004];
    int denominator_VV2005[N_VV2005];
    int denominator_VV2006[N_VV2006];
    int denominator_VV2007[N_VV2007];
    int denominator_VV2008[N_VV2008];
    int denominator_VV2009[N_VV2009];
    int denominator_VV2010[N_VV2010];
    int denominator_VV2011[N_VV2011];
    int denominator_VV2012[N_VV2012];
    int denominator_VV2013[N_VV2013];
    int denominator_VV2014[N_VV2014];
    int denominator_VV2015[N_VV2015];
    int denominator_VV2016[N_VV2016];
    int denominator_VV2017[N_VV2017];
    int denominator_VV2018[N_VV2018];
    int denominator_ZZ2003[N_ZZ2003];
    int denominator_ZZ2005[N_ZZ2005];
    int denominator_ZZ2006[N_ZZ2006];
    int denominator_ZZ2008[N_ZZ2008];
    int denominator_ZZ2009[N_ZZ2009];
    int denominator_ZZ2010[N_ZZ2010];
    int denominator_ZZ2011[N_ZZ2011];
    int denominator_ZZ2012[N_ZZ2012];
    int denominator_ZZ2013[N_ZZ2013];
    int denominator_ZZ2014[N_ZZ2014];
    int denominator_ZZ2015[N_ZZ2015];
    int denominator_ZZ2016[N_ZZ2016];
    int denominator_ZZ2017[N_ZZ2017];
    int denominator_ZZ2018[N_ZZ2018];
    int denominator_BB2019[N_BB2019];
    int denominator_CC2019[N_CC2019];
    int denominator_EE2019[N_EE2019];
    int denominator_GG2019[N_GG2019];
    int denominator_HH2019[N_HH2019];
    int denominator_KK2019[N_KK2019];
    int denominator_SS2019[N_SS2019];
    int denominator_VV2019[N_VV2019];
    int denominator_ZZ2019[N_ZZ2019];
    
    
    int BB2002_i_ID[N_BB2002];
    int BB2003_i_ID[N_BB2003];
    int BB2004_i_ID[N_BB2004];
    int BB2005_i_ID[N_BB2005];
    int BB2006_i_ID[N_BB2006];
    int BB2007_i_ID[N_BB2007];
    int BB2008_i_ID[N_BB2008];
    int BB2009_i_ID[N_BB2009];
    int BB2010_i_ID[N_BB2010];
    int BB2011_i_ID[N_BB2011];
    int BB2012_i_ID[N_BB2012];
    int BB2013_i_ID[N_BB2013];
    int BB2014_i_ID[N_BB2014];
    int BB2015_i_ID[N_BB2015];
    int BB2016_i_ID[N_BB2016];
    int BB2017_i_ID[N_BB2017];
    int BB2018_i_ID[N_BB2018];
    int CC2012_i_ID[N_CC2012];
    int CC2013_i_ID[N_CC2013];
    int CC2014_i_ID[N_CC2014];
    int CC2015_i_ID[N_CC2015];
    int CC2016_i_ID[N_CC2016];
    int CC2017_i_ID[N_CC2017];
    int CC2018_i_ID[N_CC2018];
    int DD2007_i_ID[N_DD2007];
    int DD2008_i_ID[N_DD2008];
    int DD2009_i_ID[N_DD2009];
    int DD2010_i_ID[N_DD2010];
    int DD2011_i_ID[N_DD2011];
    int DD2012_i_ID[N_DD2012];
    int DD2013_i_ID[N_DD2013];
    int EE2012_i_ID[N_EE2012];
    int EE2013_i_ID[N_EE2013];
    int EE2014_i_ID[N_EE2014];
    int EE2015_i_ID[N_EE2015];
    int EE2016_i_ID[N_EE2016];
    int EE2017_i_ID[N_EE2017];
    int EE2018_i_ID[N_EE2018];
    int GG2002_i_ID[N_GG2002];
    int GG2003_i_ID[N_GG2003];
    int GG2004_i_ID[N_GG2004];
    int GG2005_i_ID[N_GG2005];
    int GG2006_i_ID[N_GG2006];
    int GG2007_i_ID[N_GG2007];
    int GG2008_i_ID[N_GG2008];
    int GG2009_i_ID[N_GG2009];
    int GG2010_i_ID[N_GG2010];
    int GG2011_i_ID[N_GG2011];
    int GG2012_i_ID[N_GG2012];
    int GG2013_i_ID[N_GG2013];
    int GG2014_i_ID[N_GG2014];
    int GG2015_i_ID[N_GG2015];
    int GG2016_i_ID[N_GG2016];
    int GG2017_i_ID[N_GG2017];
    int GG2018_i_ID[N_GG2018];
    int HH2003_i_ID[N_HH2003];
    int HH2004_i_ID[N_HH2004];
    int HH2005_i_ID[N_HH2005];
    int HH2006_i_ID[N_HH2006];
    int HH2007_i_ID[N_HH2007];
    int HH2008_i_ID[N_HH2008];
    int HH2009_i_ID[N_HH2009];
    int HH2010_i_ID[N_HH2010];
    int HH2011_i_ID[N_HH2011];
    int HH2012_i_ID[N_HH2012];
    int HH2013_i_ID[N_HH2013];
    int HH2014_i_ID[N_HH2014];
    int HH2015_i_ID[N_HH2015];
    int HH2016_i_ID[N_HH2016];
    int HH2017_i_ID[N_HH2017];
    int HH2018_i_ID[N_HH2018];
    int KK2004_i_ID[N_KK2004];
    int KK2005_i_ID[N_KK2005];
    int KK2006_i_ID[N_KK2006];
    int KK2007_i_ID[N_KK2007];
    int KK2008_i_ID[N_KK2008];
    int KK2009_i_ID[N_KK2009];
    int KK2010_i_ID[N_KK2010];
    int KK2011_i_ID[N_KK2011];
    int KK2012_i_ID[N_KK2012];
    int KK2013_i_ID[N_KK2013];
    int KK2014_i_ID[N_KK2014];
    int KK2015_i_ID[N_KK2015];
    int KK2016_i_ID[N_KK2016];
    int KK2017_i_ID[N_KK2017];
    int KK2018_i_ID[N_KK2018];
    int NN2008_i_ID[N_NN2008];
    int NN2009_i_ID[N_NN2009];
    int NN2010_i_ID[N_NN2010];
    int NN2011_i_ID[N_NN2011];
    int NN2012_i_ID[N_NN2012];
    int NN2013_i_ID[N_NN2013];
    int NN2014_i_ID[N_NN2014];
    int NN2015_i_ID[N_NN2015];
    int NN2016_i_ID[N_NN2016];
    int NN2017_i_ID[N_NN2017];
    int NN2018_i_ID[N_NN2018];
    int SS2007_i_ID[N_SS2007];
    int SS2008_i_ID[N_SS2008];
    int SS2009_i_ID[N_SS2009];
    int SS2010_i_ID[N_SS2010];
    int SS2011_i_ID[N_SS2011];
    int SS2012_i_ID[N_SS2012];
    int SS2013_i_ID[N_SS2013];
    int SS2014_i_ID[N_SS2014];
    int SS2015_i_ID[N_SS2015];
    int SS2016_i_ID[N_SS2016];
    int SS2017_i_ID[N_SS2017];
    int SS2018_i_ID[N_SS2018];
    int VV2002_i_ID[N_VV2002];
    int VV2003_i_ID[N_VV2003];
    int VV2004_i_ID[N_VV2004];
    int VV2005_i_ID[N_VV2005];
    int VV2006_i_ID[N_VV2006];
    int VV2007_i_ID[N_VV2007];
    int VV2008_i_ID[N_VV2008];
    int VV2009_i_ID[N_VV2009];
    int VV2010_i_ID[N_VV2010];
    int VV2011_i_ID[N_VV2011];
    int VV2012_i_ID[N_VV2012];
    int VV2013_i_ID[N_VV2013];
    int VV2014_i_ID[N_VV2014];
    int VV2015_i_ID[N_VV2015];
    int VV2016_i_ID[N_VV2016];
    int VV2017_i_ID[N_VV2017];
    int VV2018_i_ID[N_VV2018];
    int ZZ2003_i_ID[N_ZZ2003];
    int ZZ2005_i_ID[N_ZZ2005];
    int ZZ2006_i_ID[N_ZZ2006];
    int ZZ2008_i_ID[N_ZZ2008];
    int ZZ2009_i_ID[N_ZZ2009];
    int ZZ2010_i_ID[N_ZZ2010];
    int ZZ2011_i_ID[N_ZZ2011];
    int ZZ2012_i_ID[N_ZZ2012];
    int ZZ2013_i_ID[N_ZZ2013];
    int ZZ2014_i_ID[N_ZZ2014];
    int ZZ2015_i_ID[N_ZZ2015];
    int ZZ2016_i_ID[N_ZZ2016];
    int ZZ2017_i_ID[N_ZZ2017];
    int ZZ2018_i_ID[N_ZZ2018];
    int BB2019_i_ID[N_BB2019];
    int CC2019_i_ID[N_CC2019];
    int EE2019_i_ID[N_EE2019];
    int GG2019_i_ID[N_GG2019];
    int HH2019_i_ID[N_HH2019];
    int KK2019_i_ID[N_KK2019];
    int SS2019_i_ID[N_SS2019];
    int VV2019_i_ID[N_VV2019];
    int ZZ2019_i_ID[N_ZZ2019];
    
    int BB2002_j_ID[N_BB2002];
    int BB2003_j_ID[N_BB2003];
    int BB2004_j_ID[N_BB2004];
    int BB2005_j_ID[N_BB2005];
    int BB2006_j_ID[N_BB2006];
    int BB2007_j_ID[N_BB2007];
    int BB2008_j_ID[N_BB2008];
    int BB2009_j_ID[N_BB2009];
    int BB2010_j_ID[N_BB2010];
    int BB2011_j_ID[N_BB2011];
    int BB2012_j_ID[N_BB2012];
    int BB2013_j_ID[N_BB2013];
    int BB2014_j_ID[N_BB2014];
    int BB2015_j_ID[N_BB2015];
    int BB2016_j_ID[N_BB2016];
    int BB2017_j_ID[N_BB2017];
    int BB2018_j_ID[N_BB2018];
    int CC2012_j_ID[N_CC2012];
    int CC2013_j_ID[N_CC2013];
    int CC2014_j_ID[N_CC2014];
    int CC2015_j_ID[N_CC2015];
    int CC2016_j_ID[N_CC2016];
    int CC2017_j_ID[N_CC2017];
    int CC2018_j_ID[N_CC2018];
    int DD2007_j_ID[N_DD2007];
    int DD2008_j_ID[N_DD2008];
    int DD2009_j_ID[N_DD2009];
    int DD2010_j_ID[N_DD2010];
    int DD2011_j_ID[N_DD2011];
    int DD2012_j_ID[N_DD2012];
    int DD2013_j_ID[N_DD2013];
    int EE2012_j_ID[N_EE2012];
    int EE2013_j_ID[N_EE2013];
    int EE2014_j_ID[N_EE2014];
    int EE2015_j_ID[N_EE2015];
    int EE2016_j_ID[N_EE2016];
    int EE2017_j_ID[N_EE2017];
    int EE2018_j_ID[N_EE2018];
    int GG2002_j_ID[N_GG2002];
    int GG2003_j_ID[N_GG2003];
    int GG2004_j_ID[N_GG2004];
    int GG2005_j_ID[N_GG2005];
    int GG2006_j_ID[N_GG2006];
    int GG2007_j_ID[N_GG2007];
    int GG2008_j_ID[N_GG2008];
    int GG2009_j_ID[N_GG2009];
    int GG2010_j_ID[N_GG2010];
    int GG2011_j_ID[N_GG2011];
    int GG2012_j_ID[N_GG2012];
    int GG2013_j_ID[N_GG2013];
    int GG2014_j_ID[N_GG2014];
    int GG2015_j_ID[N_GG2015];
    int GG2016_j_ID[N_GG2016];
    int GG2017_j_ID[N_GG2017];
    int GG2018_j_ID[N_GG2018];
    int HH2003_j_ID[N_HH2003];
    int HH2004_j_ID[N_HH2004];
    int HH2005_j_ID[N_HH2005];
    int HH2006_j_ID[N_HH2006];
    int HH2007_j_ID[N_HH2007];
    int HH2008_j_ID[N_HH2008];
    int HH2009_j_ID[N_HH2009];
    int HH2010_j_ID[N_HH2010];
    int HH2011_j_ID[N_HH2011];
    int HH2012_j_ID[N_HH2012];
    int HH2013_j_ID[N_HH2013];
    int HH2014_j_ID[N_HH2014];
    int HH2015_j_ID[N_HH2015];
    int HH2016_j_ID[N_HH2016];
    int HH2017_j_ID[N_HH2017];
    int HH2018_j_ID[N_HH2018];
    int KK2004_j_ID[N_KK2004];
    int KK2005_j_ID[N_KK2005];
    int KK2006_j_ID[N_KK2006];
    int KK2007_j_ID[N_KK2007];
    int KK2008_j_ID[N_KK2008];
    int KK2009_j_ID[N_KK2009];
    int KK2010_j_ID[N_KK2010];
    int KK2011_j_ID[N_KK2011];
    int KK2012_j_ID[N_KK2012];
    int KK2013_j_ID[N_KK2013];
    int KK2014_j_ID[N_KK2014];
    int KK2015_j_ID[N_KK2015];
    int KK2016_j_ID[N_KK2016];
    int KK2017_j_ID[N_KK2017];
    int KK2018_j_ID[N_KK2018];
    int NN2008_j_ID[N_NN2008];
    int NN2009_j_ID[N_NN2009];
    int NN2010_j_ID[N_NN2010];
    int NN2011_j_ID[N_NN2011];
    int NN2012_j_ID[N_NN2012];
    int NN2013_j_ID[N_NN2013];
    int NN2014_j_ID[N_NN2014];
    int NN2015_j_ID[N_NN2015];
    int NN2016_j_ID[N_NN2016];
    int NN2017_j_ID[N_NN2017];
    int NN2018_j_ID[N_NN2018];
    int SS2007_j_ID[N_SS2007];
    int SS2008_j_ID[N_SS2008];
    int SS2009_j_ID[N_SS2009];
    int SS2010_j_ID[N_SS2010];
    int SS2011_j_ID[N_SS2011];
    int SS2012_j_ID[N_SS2012];
    int SS2013_j_ID[N_SS2013];
    int SS2014_j_ID[N_SS2014];
    int SS2015_j_ID[N_SS2015];
    int SS2016_j_ID[N_SS2016];
    int SS2017_j_ID[N_SS2017];
    int SS2018_j_ID[N_SS2018];
    int VV2002_j_ID[N_VV2002];
    int VV2003_j_ID[N_VV2003];
    int VV2004_j_ID[N_VV2004];
    int VV2005_j_ID[N_VV2005];
    int VV2006_j_ID[N_VV2006];
    int VV2007_j_ID[N_VV2007];
    int VV2008_j_ID[N_VV2008];
    int VV2009_j_ID[N_VV2009];
    int VV2010_j_ID[N_VV2010];
    int VV2011_j_ID[N_VV2011];
    int VV2012_j_ID[N_VV2012];
    int VV2013_j_ID[N_VV2013];
    int VV2014_j_ID[N_VV2014];
    int VV2015_j_ID[N_VV2015];
    int VV2016_j_ID[N_VV2016];
    int VV2017_j_ID[N_VV2017];
    int VV2018_j_ID[N_VV2018];
    int ZZ2003_j_ID[N_ZZ2003];
    int ZZ2005_j_ID[N_ZZ2005];
    int ZZ2006_j_ID[N_ZZ2006];
    int ZZ2008_j_ID[N_ZZ2008];
    int ZZ2009_j_ID[N_ZZ2009];
    int ZZ2010_j_ID[N_ZZ2010];
    int ZZ2011_j_ID[N_ZZ2011];
    int ZZ2012_j_ID[N_ZZ2012];
    int ZZ2013_j_ID[N_ZZ2013];
    int ZZ2014_j_ID[N_ZZ2014];
    int ZZ2015_j_ID[N_ZZ2015];
    int ZZ2016_j_ID[N_ZZ2016];
    int ZZ2017_j_ID[N_ZZ2017];
    int ZZ2018_j_ID[N_ZZ2018];
    int BB2019_j_ID[N_BB2019];
    int CC2019_j_ID[N_CC2019];
    int EE2019_j_ID[N_EE2019];
    int GG2019_j_ID[N_GG2019];
    int HH2019_j_ID[N_HH2019];
    int KK2019_j_ID[N_KK2019];
    int SS2019_j_ID[N_SS2019];
    int VV2019_j_ID[N_VV2019];
    int ZZ2019_j_ID[N_ZZ2019];
    
    
    int BB2002_ij_ID[N_BB2002];
    int BB2003_ij_ID[N_BB2003];
    int BB2004_ij_ID[N_BB2004];
    int BB2005_ij_ID[N_BB2005];
    int BB2006_ij_ID[N_BB2006];
    int BB2007_ij_ID[N_BB2007];
    int BB2008_ij_ID[N_BB2008];
    int BB2009_ij_ID[N_BB2009];
    int BB2010_ij_ID[N_BB2010];
    int BB2011_ij_ID[N_BB2011];
    int BB2012_ij_ID[N_BB2012];
    int BB2013_ij_ID[N_BB2013];
    int BB2014_ij_ID[N_BB2014];
    int BB2015_ij_ID[N_BB2015];
    int BB2016_ij_ID[N_BB2016];
    int BB2017_ij_ID[N_BB2017];
    int BB2018_ij_ID[N_BB2018];
    int CC2012_ij_ID[N_CC2012];
    int CC2013_ij_ID[N_CC2013];
    int CC2014_ij_ID[N_CC2014];
    int CC2015_ij_ID[N_CC2015];
    int CC2016_ij_ID[N_CC2016];
    int CC2017_ij_ID[N_CC2017];
    int CC2018_ij_ID[N_CC2018];
    int DD2007_ij_ID[N_DD2007];
    int DD2008_ij_ID[N_DD2008];
    int DD2009_ij_ID[N_DD2009];
    int DD2010_ij_ID[N_DD2010];
    int DD2011_ij_ID[N_DD2011];
    int DD2012_ij_ID[N_DD2012];
    int DD2013_ij_ID[N_DD2013];
    int EE2012_ij_ID[N_EE2012];
    int EE2013_ij_ID[N_EE2013];
    int EE2014_ij_ID[N_EE2014];
    int EE2015_ij_ID[N_EE2015];
    int EE2016_ij_ID[N_EE2016];
    int EE2017_ij_ID[N_EE2017];
    int EE2018_ij_ID[N_EE2018];
    int GG2002_ij_ID[N_GG2002];
    int GG2003_ij_ID[N_GG2003];
    int GG2004_ij_ID[N_GG2004];
    int GG2005_ij_ID[N_GG2005];
    int GG2006_ij_ID[N_GG2006];
    int GG2007_ij_ID[N_GG2007];
    int GG2008_ij_ID[N_GG2008];
    int GG2009_ij_ID[N_GG2009];
    int GG2010_ij_ID[N_GG2010];
    int GG2011_ij_ID[N_GG2011];
    int GG2012_ij_ID[N_GG2012];
    int GG2013_ij_ID[N_GG2013];
    int GG2014_ij_ID[N_GG2014];
    int GG2015_ij_ID[N_GG2015];
    int GG2016_ij_ID[N_GG2016];
    int GG2017_ij_ID[N_GG2017];
    int GG2018_ij_ID[N_GG2018];
    int HH2003_ij_ID[N_HH2003];
    int HH2004_ij_ID[N_HH2004];
    int HH2005_ij_ID[N_HH2005];
    int HH2006_ij_ID[N_HH2006];
    int HH2007_ij_ID[N_HH2007];
    int HH2008_ij_ID[N_HH2008];
    int HH2009_ij_ID[N_HH2009];
    int HH2010_ij_ID[N_HH2010];
    int HH2011_ij_ID[N_HH2011];
    int HH2012_ij_ID[N_HH2012];
    int HH2013_ij_ID[N_HH2013];
    int HH2014_ij_ID[N_HH2014];
    int HH2015_ij_ID[N_HH2015];
    int HH2016_ij_ID[N_HH2016];
    int HH2017_ij_ID[N_HH2017];
    int HH2018_ij_ID[N_HH2018];
    int KK2004_ij_ID[N_KK2004];
    int KK2005_ij_ID[N_KK2005];
    int KK2006_ij_ID[N_KK2006];
    int KK2007_ij_ID[N_KK2007];
    int KK2008_ij_ID[N_KK2008];
    int KK2009_ij_ID[N_KK2009];
    int KK2010_ij_ID[N_KK2010];
    int KK2011_ij_ID[N_KK2011];
    int KK2012_ij_ID[N_KK2012];
    int KK2013_ij_ID[N_KK2013];
    int KK2014_ij_ID[N_KK2014];
    int KK2015_ij_ID[N_KK2015];
    int KK2016_ij_ID[N_KK2016];
    int KK2017_ij_ID[N_KK2017];
    int KK2018_ij_ID[N_KK2018];
    int NN2008_ij_ID[N_NN2008];
    int NN2009_ij_ID[N_NN2009];
    int NN2010_ij_ID[N_NN2010];
    int NN2011_ij_ID[N_NN2011];
    int NN2012_ij_ID[N_NN2012];
    int NN2013_ij_ID[N_NN2013];
    int NN2014_ij_ID[N_NN2014];
    int NN2015_ij_ID[N_NN2015];
    int NN2016_ij_ID[N_NN2016];
    int NN2017_ij_ID[N_NN2017];
    int NN2018_ij_ID[N_NN2018];
    int SS2007_ij_ID[N_SS2007];
    int SS2008_ij_ID[N_SS2008];
    int SS2009_ij_ID[N_SS2009];
    int SS2010_ij_ID[N_SS2010];
    int SS2011_ij_ID[N_SS2011];
    int SS2012_ij_ID[N_SS2012];
    int SS2013_ij_ID[N_SS2013];
    int SS2014_ij_ID[N_SS2014];
    int SS2015_ij_ID[N_SS2015];
    int SS2016_ij_ID[N_SS2016];
    int SS2017_ij_ID[N_SS2017];
    int SS2018_ij_ID[N_SS2018];
    int VV2002_ij_ID[N_VV2002];
    int VV2003_ij_ID[N_VV2003];
    int VV2004_ij_ID[N_VV2004];
    int VV2005_ij_ID[N_VV2005];
    int VV2006_ij_ID[N_VV2006];
    int VV2007_ij_ID[N_VV2007];
    int VV2008_ij_ID[N_VV2008];
    int VV2009_ij_ID[N_VV2009];
    int VV2010_ij_ID[N_VV2010];
    int VV2011_ij_ID[N_VV2011];
    int VV2012_ij_ID[N_VV2012];
    int VV2013_ij_ID[N_VV2013];
    int VV2014_ij_ID[N_VV2014];
    int VV2015_ij_ID[N_VV2015];
    int VV2016_ij_ID[N_VV2016];
    int VV2017_ij_ID[N_VV2017];
    int VV2018_ij_ID[N_VV2018];
    int ZZ2003_ij_ID[N_ZZ2003];
    int ZZ2005_ij_ID[N_ZZ2005];
    int ZZ2006_ij_ID[N_ZZ2006];
    int ZZ2008_ij_ID[N_ZZ2008];
    int ZZ2009_ij_ID[N_ZZ2009];
    int ZZ2010_ij_ID[N_ZZ2010];
    int ZZ2011_ij_ID[N_ZZ2011];
    int ZZ2012_ij_ID[N_ZZ2012];
    int ZZ2013_ij_ID[N_ZZ2013];
    int ZZ2014_ij_ID[N_ZZ2014];
    int ZZ2015_ij_ID[N_ZZ2015];
    int ZZ2016_ij_ID[N_ZZ2016];
    int ZZ2017_ij_ID[N_ZZ2017];
    int ZZ2018_ij_ID[N_ZZ2018];
    int BB2019_ij_ID[N_BB2019];
    int CC2019_ij_ID[N_CC2019];
    int EE2019_ij_ID[N_EE2019];
    int GG2019_ij_ID[N_GG2019];
    int HH2019_ij_ID[N_HH2019];
    int KK2019_ij_ID[N_KK2019];
    int SS2019_ij_ID[N_SS2019];
    int VV2019_ij_ID[N_VV2019];
    int ZZ2019_ij_ID[N_ZZ2019];

    
	int BB2002_i2j_ID[N_BB2002];
    int BB2003_i2j_ID[N_BB2003];
    int BB2004_i2j_ID[N_BB2004];
    int BB2005_i2j_ID[N_BB2005];
    int BB2006_i2j_ID[N_BB2006];
    int BB2007_i2j_ID[N_BB2007];
    int BB2008_i2j_ID[N_BB2008];
    int BB2009_i2j_ID[N_BB2009];
    int BB2010_i2j_ID[N_BB2010];
    int BB2011_i2j_ID[N_BB2011];
    int BB2012_i2j_ID[N_BB2012];
    int BB2013_i2j_ID[N_BB2013];
    int BB2014_i2j_ID[N_BB2014];
    int BB2015_i2j_ID[N_BB2015];
    int BB2016_i2j_ID[N_BB2016];
    int BB2017_i2j_ID[N_BB2017];
    int BB2018_i2j_ID[N_BB2018];
    int CC2012_i2j_ID[N_CC2012];
    int CC2013_i2j_ID[N_CC2013];
    int CC2014_i2j_ID[N_CC2014];
    int CC2015_i2j_ID[N_CC2015];
    int CC2016_i2j_ID[N_CC2016];
    int CC2017_i2j_ID[N_CC2017];
    int CC2018_i2j_ID[N_CC2018];
    int DD2007_i2j_ID[N_DD2007];
    int DD2008_i2j_ID[N_DD2008];
    int DD2009_i2j_ID[N_DD2009];
    int DD2010_i2j_ID[N_DD2010];
    int DD2011_i2j_ID[N_DD2011];
    int DD2012_i2j_ID[N_DD2012];
    int DD2013_i2j_ID[N_DD2013];
    int EE2012_i2j_ID[N_EE2012];
    int EE2013_i2j_ID[N_EE2013];
    int EE2014_i2j_ID[N_EE2014];
    int EE2015_i2j_ID[N_EE2015];
    int EE2016_i2j_ID[N_EE2016];
    int EE2017_i2j_ID[N_EE2017];
    int EE2018_i2j_ID[N_EE2018];
    int GG2002_i2j_ID[N_GG2002];
    int GG2003_i2j_ID[N_GG2003];
    int GG2004_i2j_ID[N_GG2004];
    int GG2005_i2j_ID[N_GG2005];
    int GG2006_i2j_ID[N_GG2006];
    int GG2007_i2j_ID[N_GG2007];
    int GG2008_i2j_ID[N_GG2008];
    int GG2009_i2j_ID[N_GG2009];
    int GG2010_i2j_ID[N_GG2010];
    int GG2011_i2j_ID[N_GG2011];
    int GG2012_i2j_ID[N_GG2012];
    int GG2013_i2j_ID[N_GG2013];
    int GG2014_i2j_ID[N_GG2014];
    int GG2015_i2j_ID[N_GG2015];
    int GG2016_i2j_ID[N_GG2016];
    int GG2017_i2j_ID[N_GG2017];
    int GG2018_i2j_ID[N_GG2018];
    int HH2003_i2j_ID[N_HH2003];
    int HH2004_i2j_ID[N_HH2004];
    int HH2005_i2j_ID[N_HH2005];
    int HH2006_i2j_ID[N_HH2006];
    int HH2007_i2j_ID[N_HH2007];
    int HH2008_i2j_ID[N_HH2008];
    int HH2009_i2j_ID[N_HH2009];
    int HH2010_i2j_ID[N_HH2010];
    int HH2011_i2j_ID[N_HH2011];
    int HH2012_i2j_ID[N_HH2012];
    int HH2013_i2j_ID[N_HH2013];
    int HH2014_i2j_ID[N_HH2014];
    int HH2015_i2j_ID[N_HH2015];
    int HH2016_i2j_ID[N_HH2016];
    int HH2017_i2j_ID[N_HH2017];
    int HH2018_i2j_ID[N_HH2018];
    int KK2004_i2j_ID[N_KK2004];
    int KK2005_i2j_ID[N_KK2005];
    int KK2006_i2j_ID[N_KK2006];
    int KK2007_i2j_ID[N_KK2007];
    int KK2008_i2j_ID[N_KK2008];
    int KK2009_i2j_ID[N_KK2009];
    int KK2010_i2j_ID[N_KK2010];
    int KK2011_i2j_ID[N_KK2011];
    int KK2012_i2j_ID[N_KK2012];
    int KK2013_i2j_ID[N_KK2013];
    int KK2014_i2j_ID[N_KK2014];
    int KK2015_i2j_ID[N_KK2015];
    int KK2016_i2j_ID[N_KK2016];
    int KK2017_i2j_ID[N_KK2017];
    int KK2018_i2j_ID[N_KK2018];
    int NN2008_i2j_ID[N_NN2008];
    int NN2009_i2j_ID[N_NN2009];
    int NN2010_i2j_ID[N_NN2010];
    int NN2011_i2j_ID[N_NN2011];
    int NN2012_i2j_ID[N_NN2012];
    int NN2013_i2j_ID[N_NN2013];
    int NN2014_i2j_ID[N_NN2014];
    int NN2015_i2j_ID[N_NN2015];
    int NN2016_i2j_ID[N_NN2016];
    int NN2017_i2j_ID[N_NN2017];
    int NN2018_i2j_ID[N_NN2018];
    int SS2007_i2j_ID[N_SS2007];
    int SS2008_i2j_ID[N_SS2008];
    int SS2009_i2j_ID[N_SS2009];
    int SS2010_i2j_ID[N_SS2010];
    int SS2011_i2j_ID[N_SS2011];
    int SS2012_i2j_ID[N_SS2012];
    int SS2013_i2j_ID[N_SS2013];
    int SS2014_i2j_ID[N_SS2014];
    int SS2015_i2j_ID[N_SS2015];
    int SS2016_i2j_ID[N_SS2016];
    int SS2017_i2j_ID[N_SS2017];
    int SS2018_i2j_ID[N_SS2018];
    int VV2002_i2j_ID[N_VV2002];
    int VV2003_i2j_ID[N_VV2003];
    int VV2004_i2j_ID[N_VV2004];
    int VV2005_i2j_ID[N_VV2005];
    int VV2006_i2j_ID[N_VV2006];
    int VV2007_i2j_ID[N_VV2007];
    int VV2008_i2j_ID[N_VV2008];
    int VV2009_i2j_ID[N_VV2009];
    int VV2010_i2j_ID[N_VV2010];
    int VV2011_i2j_ID[N_VV2011];
    int VV2012_i2j_ID[N_VV2012];
    int VV2013_i2j_ID[N_VV2013];
    int VV2014_i2j_ID[N_VV2014];
    int VV2015_i2j_ID[N_VV2015];
    int VV2016_i2j_ID[N_VV2016];
    int VV2017_i2j_ID[N_VV2017];
    int VV2018_i2j_ID[N_VV2018];
    int ZZ2003_i2j_ID[N_ZZ2003];
    int ZZ2005_i2j_ID[N_ZZ2005];
    int ZZ2006_i2j_ID[N_ZZ2006];
    int ZZ2008_i2j_ID[N_ZZ2008];
    int ZZ2009_i2j_ID[N_ZZ2009];
    int ZZ2010_i2j_ID[N_ZZ2010];
    int ZZ2011_i2j_ID[N_ZZ2011];
    int ZZ2012_i2j_ID[N_ZZ2012];
    int ZZ2013_i2j_ID[N_ZZ2013];
    int ZZ2014_i2j_ID[N_ZZ2014];
    int ZZ2015_i2j_ID[N_ZZ2015];
    int ZZ2016_i2j_ID[N_ZZ2016];
    int ZZ2017_i2j_ID[N_ZZ2017];
    int ZZ2018_i2j_ID[N_ZZ2018];
    int BB2019_i2j_ID[N_BB2019];
    int CC2019_i2j_ID[N_CC2019];
    int EE2019_i2j_ID[N_EE2019];
    int GG2019_i2j_ID[N_GG2019];
    int HH2019_i2j_ID[N_HH2019];
    int KK2019_i2j_ID[N_KK2019];
    int SS2019_i2j_ID[N_SS2019];
    int VV2019_i2j_ID[N_VV2019];
    int ZZ2019_i2j_ID[N_ZZ2019];
    
    
    int BB2002_group_ID[N_BB2002];
    int BB2003_group_ID[N_BB2003];
    int BB2004_group_ID[N_BB2004];
    int BB2005_group_ID[N_BB2005];
    int BB2006_group_ID[N_BB2006];
    int BB2007_group_ID[N_BB2007];
    int BB2008_group_ID[N_BB2008];
    int BB2009_group_ID[N_BB2009];
    int BB2010_group_ID[N_BB2010];
    int BB2011_group_ID[N_BB2011];
    int BB2012_group_ID[N_BB2012];
    int BB2013_group_ID[N_BB2013];
    int BB2014_group_ID[N_BB2014];
    int BB2015_group_ID[N_BB2015];
    int BB2016_group_ID[N_BB2016];
    int BB2017_group_ID[N_BB2017];
    int BB2018_group_ID[N_BB2018];
    int CC2012_group_ID[N_CC2012];
    int CC2013_group_ID[N_CC2013];
    int CC2014_group_ID[N_CC2014];
    int CC2015_group_ID[N_CC2015];
    int CC2016_group_ID[N_CC2016];
    int CC2017_group_ID[N_CC2017];
    int CC2018_group_ID[N_CC2018];
    int DD2007_group_ID[N_DD2007];
    int DD2008_group_ID[N_DD2008];
    int DD2009_group_ID[N_DD2009];
    int DD2010_group_ID[N_DD2010];
    int DD2011_group_ID[N_DD2011];
    int DD2012_group_ID[N_DD2012];
    int DD2013_group_ID[N_DD2013];
    int EE2012_group_ID[N_EE2012];
    int EE2013_group_ID[N_EE2013];
    int EE2014_group_ID[N_EE2014];
    int EE2015_group_ID[N_EE2015];
    int EE2016_group_ID[N_EE2016];
    int EE2017_group_ID[N_EE2017];
    int EE2018_group_ID[N_EE2018];
    int GG2002_group_ID[N_GG2002];
    int GG2003_group_ID[N_GG2003];
    int GG2004_group_ID[N_GG2004];
    int GG2005_group_ID[N_GG2005];
    int GG2006_group_ID[N_GG2006];
    int GG2007_group_ID[N_GG2007];
    int GG2008_group_ID[N_GG2008];
    int GG2009_group_ID[N_GG2009];
    int GG2010_group_ID[N_GG2010];
    int GG2011_group_ID[N_GG2011];
    int GG2012_group_ID[N_GG2012];
    int GG2013_group_ID[N_GG2013];
    int GG2014_group_ID[N_GG2014];
    int GG2015_group_ID[N_GG2015];
    int GG2016_group_ID[N_GG2016];
    int GG2017_group_ID[N_GG2017];
    int GG2018_group_ID[N_GG2018];
    int HH2003_group_ID[N_HH2003];
    int HH2004_group_ID[N_HH2004];
    int HH2005_group_ID[N_HH2005];
    int HH2006_group_ID[N_HH2006];
    int HH2007_group_ID[N_HH2007];
    int HH2008_group_ID[N_HH2008];
    int HH2009_group_ID[N_HH2009];
    int HH2010_group_ID[N_HH2010];
    int HH2011_group_ID[N_HH2011];
    int HH2012_group_ID[N_HH2012];
    int HH2013_group_ID[N_HH2013];
    int HH2014_group_ID[N_HH2014];
    int HH2015_group_ID[N_HH2015];
    int HH2016_group_ID[N_HH2016];
    int HH2017_group_ID[N_HH2017];
    int HH2018_group_ID[N_HH2018];
    int KK2004_group_ID[N_KK2004];
    int KK2005_group_ID[N_KK2005];
    int KK2006_group_ID[N_KK2006];
    int KK2007_group_ID[N_KK2007];
    int KK2008_group_ID[N_KK2008];
    int KK2009_group_ID[N_KK2009];
    int KK2010_group_ID[N_KK2010];
    int KK2011_group_ID[N_KK2011];
    int KK2012_group_ID[N_KK2012];
    int KK2013_group_ID[N_KK2013];
    int KK2014_group_ID[N_KK2014];
    int KK2015_group_ID[N_KK2015];
    int KK2016_group_ID[N_KK2016];
    int KK2017_group_ID[N_KK2017];
    int KK2018_group_ID[N_KK2018];
    int NN2008_group_ID[N_NN2008];
    int NN2009_group_ID[N_NN2009];
    int NN2010_group_ID[N_NN2010];
    int NN2011_group_ID[N_NN2011];
    int NN2012_group_ID[N_NN2012];
    int NN2013_group_ID[N_NN2013];
    int NN2014_group_ID[N_NN2014];
    int NN2015_group_ID[N_NN2015];
    int NN2016_group_ID[N_NN2016];
    int NN2017_group_ID[N_NN2017];
    int NN2018_group_ID[N_NN2018];
    int SS2007_group_ID[N_SS2007];
    int SS2008_group_ID[N_SS2008];
    int SS2009_group_ID[N_SS2009];
    int SS2010_group_ID[N_SS2010];
    int SS2011_group_ID[N_SS2011];
    int SS2012_group_ID[N_SS2012];
    int SS2013_group_ID[N_SS2013];
    int SS2014_group_ID[N_SS2014];
    int SS2015_group_ID[N_SS2015];
    int SS2016_group_ID[N_SS2016];
    int SS2017_group_ID[N_SS2017];
    int SS2018_group_ID[N_SS2018];
    int VV2002_group_ID[N_VV2002];
    int VV2003_group_ID[N_VV2003];
    int VV2004_group_ID[N_VV2004];
    int VV2005_group_ID[N_VV2005];
    int VV2006_group_ID[N_VV2006];
    int VV2007_group_ID[N_VV2007];
    int VV2008_group_ID[N_VV2008];
    int VV2009_group_ID[N_VV2009];
    int VV2010_group_ID[N_VV2010];
    int VV2011_group_ID[N_VV2011];
    int VV2012_group_ID[N_VV2012];
    int VV2013_group_ID[N_VV2013];
    int VV2014_group_ID[N_VV2014];
    int VV2015_group_ID[N_VV2015];
    int VV2016_group_ID[N_VV2016];
    int VV2017_group_ID[N_VV2017];
    int VV2018_group_ID[N_VV2018];
    int ZZ2003_group_ID[N_ZZ2003];
    int ZZ2005_group_ID[N_ZZ2005];
    int ZZ2006_group_ID[N_ZZ2006];
    int ZZ2008_group_ID[N_ZZ2008];
    int ZZ2009_group_ID[N_ZZ2009];
    int ZZ2010_group_ID[N_ZZ2010];
    int ZZ2011_group_ID[N_ZZ2011];
    int ZZ2012_group_ID[N_ZZ2012];
    int ZZ2013_group_ID[N_ZZ2013];
    int ZZ2014_group_ID[N_ZZ2014];
    int ZZ2015_group_ID[N_ZZ2015];
    int ZZ2016_group_ID[N_ZZ2016];
    int ZZ2017_group_ID[N_ZZ2017];
    int ZZ2018_group_ID[N_ZZ2018];
    int BB2019_group_ID[N_BB2019];
    int CC2019_group_ID[N_CC2019];
    int EE2019_group_ID[N_EE2019];
    int GG2019_group_ID[N_GG2019];
    int HH2019_group_ID[N_HH2019];
    int KK2019_group_ID[N_KK2019];
    int SS2019_group_ID[N_SS2019];
    int VV2019_group_ID[N_VV2019];
    int ZZ2019_group_ID[N_ZZ2019];

}

parameters{
    real a;
    
    ////////// Variances and covariances
    // group-level
    real<lower=0> sigma_group_ID;
    
    // Node-level
    vector<lower=0>[2] sigma_i__j_ID;
    cholesky_factor_corr[2] L_Rho_i__j_ID;
    
    // Dyadic variance, first symmetric then directed
    real<lower=0> sigma_ij_ID;
    real<lower=0> sigma_i2j_ID;
    
    /////////// Effects
    // Group-level effects
    vector [N_group] v_group_ID;
    
    // Node level effects for each group_year
    matrix[2,N_i__j_ID_BB2002] z_i__j_ID_BB2002;
    matrix[2,N_i__j_ID_BB2003] z_i__j_ID_BB2003;
    matrix[2,N_i__j_ID_BB2004] z_i__j_ID_BB2004;
    matrix[2,N_i__j_ID_BB2005] z_i__j_ID_BB2005;
    matrix[2,N_i__j_ID_BB2006] z_i__j_ID_BB2006;
    matrix[2,N_i__j_ID_BB2007] z_i__j_ID_BB2007;
    matrix[2,N_i__j_ID_BB2008] z_i__j_ID_BB2008;
    matrix[2,N_i__j_ID_BB2009] z_i__j_ID_BB2009;
    matrix[2,N_i__j_ID_BB2010] z_i__j_ID_BB2010;
    matrix[2,N_i__j_ID_BB2011] z_i__j_ID_BB2011;
    matrix[2,N_i__j_ID_BB2012] z_i__j_ID_BB2012;
    matrix[2,N_i__j_ID_BB2013] z_i__j_ID_BB2013;
    matrix[2,N_i__j_ID_BB2014] z_i__j_ID_BB2014;
    matrix[2,N_i__j_ID_BB2015] z_i__j_ID_BB2015;
    matrix[2,N_i__j_ID_BB2016] z_i__j_ID_BB2016;
    matrix[2,N_i__j_ID_BB2017] z_i__j_ID_BB2017;
    matrix[2,N_i__j_ID_BB2018] z_i__j_ID_BB2018;
    matrix[2,N_i__j_ID_CC2012] z_i__j_ID_CC2012;
    matrix[2,N_i__j_ID_CC2013] z_i__j_ID_CC2013;
    matrix[2,N_i__j_ID_CC2014] z_i__j_ID_CC2014;
    matrix[2,N_i__j_ID_CC2015] z_i__j_ID_CC2015;
    matrix[2,N_i__j_ID_CC2016] z_i__j_ID_CC2016;
    matrix[2,N_i__j_ID_CC2017] z_i__j_ID_CC2017;
    matrix[2,N_i__j_ID_CC2018] z_i__j_ID_CC2018;
    matrix[2,N_i__j_ID_DD2007] z_i__j_ID_DD2007;
    matrix[2,N_i__j_ID_DD2008] z_i__j_ID_DD2008;
    matrix[2,N_i__j_ID_DD2009] z_i__j_ID_DD2009;
    matrix[2,N_i__j_ID_DD2010] z_i__j_ID_DD2010;
    matrix[2,N_i__j_ID_DD2011] z_i__j_ID_DD2011;
    matrix[2,N_i__j_ID_DD2012] z_i__j_ID_DD2012;
    matrix[2,N_i__j_ID_DD2013] z_i__j_ID_DD2013;
    matrix[2,N_i__j_ID_EE2012] z_i__j_ID_EE2012;
    matrix[2,N_i__j_ID_EE2013] z_i__j_ID_EE2013;
    matrix[2,N_i__j_ID_EE2014] z_i__j_ID_EE2014;
    matrix[2,N_i__j_ID_EE2015] z_i__j_ID_EE2015;
    matrix[2,N_i__j_ID_EE2016] z_i__j_ID_EE2016;
    matrix[2,N_i__j_ID_EE2017] z_i__j_ID_EE2017;
    matrix[2,N_i__j_ID_EE2018] z_i__j_ID_EE2018;
    matrix[2,N_i__j_ID_GG2002] z_i__j_ID_GG2002;
    matrix[2,N_i__j_ID_GG2003] z_i__j_ID_GG2003;
    matrix[2,N_i__j_ID_GG2004] z_i__j_ID_GG2004;
    matrix[2,N_i__j_ID_GG2005] z_i__j_ID_GG2005;
    matrix[2,N_i__j_ID_GG2006] z_i__j_ID_GG2006;
    matrix[2,N_i__j_ID_GG2007] z_i__j_ID_GG2007;
    matrix[2,N_i__j_ID_GG2008] z_i__j_ID_GG2008;
    matrix[2,N_i__j_ID_GG2009] z_i__j_ID_GG2009;
    matrix[2,N_i__j_ID_GG2010] z_i__j_ID_GG2010;
    matrix[2,N_i__j_ID_GG2011] z_i__j_ID_GG2011;
    matrix[2,N_i__j_ID_GG2012] z_i__j_ID_GG2012;
    matrix[2,N_i__j_ID_GG2013] z_i__j_ID_GG2013;
    matrix[2,N_i__j_ID_GG2014] z_i__j_ID_GG2014;
    matrix[2,N_i__j_ID_GG2015] z_i__j_ID_GG2015;
    matrix[2,N_i__j_ID_GG2016] z_i__j_ID_GG2016;
    matrix[2,N_i__j_ID_GG2017] z_i__j_ID_GG2017;
    matrix[2,N_i__j_ID_GG2018] z_i__j_ID_GG2018;
    matrix[2,N_i__j_ID_HH2003] z_i__j_ID_HH2003;
    matrix[2,N_i__j_ID_HH2004] z_i__j_ID_HH2004;
    matrix[2,N_i__j_ID_HH2005] z_i__j_ID_HH2005;
    matrix[2,N_i__j_ID_HH2006] z_i__j_ID_HH2006;
    matrix[2,N_i__j_ID_HH2007] z_i__j_ID_HH2007;
    matrix[2,N_i__j_ID_HH2008] z_i__j_ID_HH2008;
    matrix[2,N_i__j_ID_HH2009] z_i__j_ID_HH2009;
    matrix[2,N_i__j_ID_HH2010] z_i__j_ID_HH2010;
    matrix[2,N_i__j_ID_HH2011] z_i__j_ID_HH2011;
    matrix[2,N_i__j_ID_HH2012] z_i__j_ID_HH2012;
    matrix[2,N_i__j_ID_HH2013] z_i__j_ID_HH2013;
    matrix[2,N_i__j_ID_HH2014] z_i__j_ID_HH2014;
    matrix[2,N_i__j_ID_HH2015] z_i__j_ID_HH2015;
    matrix[2,N_i__j_ID_HH2016] z_i__j_ID_HH2016;
    matrix[2,N_i__j_ID_HH2017] z_i__j_ID_HH2017;
    matrix[2,N_i__j_ID_HH2018] z_i__j_ID_HH2018;
    matrix[2,N_i__j_ID_KK2004] z_i__j_ID_KK2004;
    matrix[2,N_i__j_ID_KK2005] z_i__j_ID_KK2005;
    matrix[2,N_i__j_ID_KK2006] z_i__j_ID_KK2006;
    matrix[2,N_i__j_ID_KK2007] z_i__j_ID_KK2007;
    matrix[2,N_i__j_ID_KK2008] z_i__j_ID_KK2008;
    matrix[2,N_i__j_ID_KK2009] z_i__j_ID_KK2009;
    matrix[2,N_i__j_ID_KK2010] z_i__j_ID_KK2010;
    matrix[2,N_i__j_ID_KK2011] z_i__j_ID_KK2011;
    matrix[2,N_i__j_ID_KK2012] z_i__j_ID_KK2012;
    matrix[2,N_i__j_ID_KK2013] z_i__j_ID_KK2013;
    matrix[2,N_i__j_ID_KK2014] z_i__j_ID_KK2014;
    matrix[2,N_i__j_ID_KK2015] z_i__j_ID_KK2015;
    matrix[2,N_i__j_ID_KK2016] z_i__j_ID_KK2016;
    matrix[2,N_i__j_ID_KK2017] z_i__j_ID_KK2017;
    matrix[2,N_i__j_ID_KK2018] z_i__j_ID_KK2018;
    matrix[2,N_i__j_ID_NN2008] z_i__j_ID_NN2008;
    matrix[2,N_i__j_ID_NN2009] z_i__j_ID_NN2009;
    matrix[2,N_i__j_ID_NN2010] z_i__j_ID_NN2010;
    matrix[2,N_i__j_ID_NN2011] z_i__j_ID_NN2011;
    matrix[2,N_i__j_ID_NN2012] z_i__j_ID_NN2012;
    matrix[2,N_i__j_ID_NN2013] z_i__j_ID_NN2013;
    matrix[2,N_i__j_ID_NN2014] z_i__j_ID_NN2014;
    matrix[2,N_i__j_ID_NN2015] z_i__j_ID_NN2015;
    matrix[2,N_i__j_ID_NN2016] z_i__j_ID_NN2016;
    matrix[2,N_i__j_ID_NN2017] z_i__j_ID_NN2017;
    matrix[2,N_i__j_ID_NN2018] z_i__j_ID_NN2018;
    matrix[2,N_i__j_ID_SS2007] z_i__j_ID_SS2007;
    matrix[2,N_i__j_ID_SS2008] z_i__j_ID_SS2008;
    matrix[2,N_i__j_ID_SS2009] z_i__j_ID_SS2009;
    matrix[2,N_i__j_ID_SS2010] z_i__j_ID_SS2010;
    matrix[2,N_i__j_ID_SS2011] z_i__j_ID_SS2011;
    matrix[2,N_i__j_ID_SS2012] z_i__j_ID_SS2012;
    matrix[2,N_i__j_ID_SS2013] z_i__j_ID_SS2013;
    matrix[2,N_i__j_ID_SS2014] z_i__j_ID_SS2014;
    matrix[2,N_i__j_ID_SS2015] z_i__j_ID_SS2015;
    matrix[2,N_i__j_ID_SS2016] z_i__j_ID_SS2016;
    matrix[2,N_i__j_ID_SS2017] z_i__j_ID_SS2017;
    matrix[2,N_i__j_ID_SS2018] z_i__j_ID_SS2018;
    matrix[2,N_i__j_ID_VV2002] z_i__j_ID_VV2002;
    matrix[2,N_i__j_ID_VV2003] z_i__j_ID_VV2003;
    matrix[2,N_i__j_ID_VV2004] z_i__j_ID_VV2004;
    matrix[2,N_i__j_ID_VV2005] z_i__j_ID_VV2005;
    matrix[2,N_i__j_ID_VV2006] z_i__j_ID_VV2006;
    matrix[2,N_i__j_ID_VV2007] z_i__j_ID_VV2007;
    matrix[2,N_i__j_ID_VV2008] z_i__j_ID_VV2008;
    matrix[2,N_i__j_ID_VV2009] z_i__j_ID_VV2009;
    matrix[2,N_i__j_ID_VV2010] z_i__j_ID_VV2010;
    matrix[2,N_i__j_ID_VV2011] z_i__j_ID_VV2011;
    matrix[2,N_i__j_ID_VV2012] z_i__j_ID_VV2012;
    matrix[2,N_i__j_ID_VV2013] z_i__j_ID_VV2013;
    matrix[2,N_i__j_ID_VV2014] z_i__j_ID_VV2014;
    matrix[2,N_i__j_ID_VV2015] z_i__j_ID_VV2015;
    matrix[2,N_i__j_ID_VV2016] z_i__j_ID_VV2016;
    matrix[2,N_i__j_ID_VV2017] z_i__j_ID_VV2017;
    matrix[2,N_i__j_ID_VV2018] z_i__j_ID_VV2018;
    matrix[2,N_i__j_ID_ZZ2003] z_i__j_ID_ZZ2003;
    matrix[2,N_i__j_ID_ZZ2005] z_i__j_ID_ZZ2005;
    matrix[2,N_i__j_ID_ZZ2006] z_i__j_ID_ZZ2006;
    matrix[2,N_i__j_ID_ZZ2008] z_i__j_ID_ZZ2008;
    matrix[2,N_i__j_ID_ZZ2009] z_i__j_ID_ZZ2009;
    matrix[2,N_i__j_ID_ZZ2010] z_i__j_ID_ZZ2010;
    matrix[2,N_i__j_ID_ZZ2011] z_i__j_ID_ZZ2011;
    matrix[2,N_i__j_ID_ZZ2012] z_i__j_ID_ZZ2012;
    matrix[2,N_i__j_ID_ZZ2013] z_i__j_ID_ZZ2013;
    matrix[2,N_i__j_ID_ZZ2014] z_i__j_ID_ZZ2014;
    matrix[2,N_i__j_ID_ZZ2015] z_i__j_ID_ZZ2015;
    matrix[2,N_i__j_ID_ZZ2016] z_i__j_ID_ZZ2016;
    matrix[2,N_i__j_ID_ZZ2017] z_i__j_ID_ZZ2017;
    matrix[2,N_i__j_ID_ZZ2018] z_i__j_ID_ZZ2018;
    matrix[2,N_i__j_ID_BB2019] z_i__j_ID_BB2019;
    matrix[2,N_i__j_ID_CC2019] z_i__j_ID_CC2019;
    matrix[2,N_i__j_ID_EE2019] z_i__j_ID_EE2019;
    matrix[2,N_i__j_ID_GG2019] z_i__j_ID_GG2019;
    matrix[2,N_i__j_ID_HH2019] z_i__j_ID_HH2019;
    matrix[2,N_i__j_ID_KK2019] z_i__j_ID_KK2019;
    matrix[2,N_i__j_ID_SS2019] z_i__j_ID_SS2019;
    matrix[2,N_i__j_ID_VV2019] z_i__j_ID_VV2019;
    matrix[2,N_i__j_ID_ZZ2019] z_i__j_ID_ZZ2019;


	// Symmetric dyad effects for each group-year
  vector[N_dyads_BB2002] v_ij_ID_BB2002;
  vector[N_dyads_BB2003] v_ij_ID_BB2003;
  vector[N_dyads_BB2004] v_ij_ID_BB2004;
  vector[N_dyads_BB2005] v_ij_ID_BB2005;
  vector[N_dyads_BB2006] v_ij_ID_BB2006;
  vector[N_dyads_BB2007] v_ij_ID_BB2007;
  vector[N_dyads_BB2008] v_ij_ID_BB2008;
  vector[N_dyads_BB2009] v_ij_ID_BB2009;
  vector[N_dyads_BB2010] v_ij_ID_BB2010;
  vector[N_dyads_BB2011] v_ij_ID_BB2011;
  vector[N_dyads_BB2012] v_ij_ID_BB2012;
  vector[N_dyads_BB2013] v_ij_ID_BB2013;
  vector[N_dyads_BB2014] v_ij_ID_BB2014;
  vector[N_dyads_BB2015] v_ij_ID_BB2015;
  vector[N_dyads_BB2016] v_ij_ID_BB2016;
  vector[N_dyads_BB2017] v_ij_ID_BB2017;
  vector[N_dyads_BB2018] v_ij_ID_BB2018;
  vector[N_dyads_CC2012] v_ij_ID_CC2012;
  vector[N_dyads_CC2013] v_ij_ID_CC2013;
  vector[N_dyads_CC2014] v_ij_ID_CC2014;
  vector[N_dyads_CC2015] v_ij_ID_CC2015;
  vector[N_dyads_CC2016] v_ij_ID_CC2016;
  vector[N_dyads_CC2017] v_ij_ID_CC2017;
  vector[N_dyads_CC2018] v_ij_ID_CC2018;
  vector[N_dyads_DD2007] v_ij_ID_DD2007;
  vector[N_dyads_DD2008] v_ij_ID_DD2008;
  vector[N_dyads_DD2009] v_ij_ID_DD2009;
  vector[N_dyads_DD2010] v_ij_ID_DD2010;
  vector[N_dyads_DD2011] v_ij_ID_DD2011;
  vector[N_dyads_DD2012] v_ij_ID_DD2012;
  vector[N_dyads_DD2013] v_ij_ID_DD2013;
  vector[N_dyads_EE2012] v_ij_ID_EE2012;
  vector[N_dyads_EE2013] v_ij_ID_EE2013;
  vector[N_dyads_EE2014] v_ij_ID_EE2014;
  vector[N_dyads_EE2015] v_ij_ID_EE2015;
  vector[N_dyads_EE2016] v_ij_ID_EE2016;
  vector[N_dyads_EE2017] v_ij_ID_EE2017;
  vector[N_dyads_EE2018] v_ij_ID_EE2018;
  vector[N_dyads_GG2002] v_ij_ID_GG2002;
  vector[N_dyads_GG2003] v_ij_ID_GG2003;
  vector[N_dyads_GG2004] v_ij_ID_GG2004;
  vector[N_dyads_GG2005] v_ij_ID_GG2005;
  vector[N_dyads_GG2006] v_ij_ID_GG2006;
  vector[N_dyads_GG2007] v_ij_ID_GG2007;
  vector[N_dyads_GG2008] v_ij_ID_GG2008;
  vector[N_dyads_GG2009] v_ij_ID_GG2009;
  vector[N_dyads_GG2010] v_ij_ID_GG2010;
  vector[N_dyads_GG2011] v_ij_ID_GG2011;
  vector[N_dyads_GG2012] v_ij_ID_GG2012;
  vector[N_dyads_GG2013] v_ij_ID_GG2013;
  vector[N_dyads_GG2014] v_ij_ID_GG2014;
  vector[N_dyads_GG2015] v_ij_ID_GG2015;
  vector[N_dyads_GG2016] v_ij_ID_GG2016;
  vector[N_dyads_GG2017] v_ij_ID_GG2017;
  vector[N_dyads_GG2018] v_ij_ID_GG2018;
  vector[N_dyads_HH2003] v_ij_ID_HH2003;
  vector[N_dyads_HH2004] v_ij_ID_HH2004;
  vector[N_dyads_HH2005] v_ij_ID_HH2005;
  vector[N_dyads_HH2006] v_ij_ID_HH2006;
  vector[N_dyads_HH2007] v_ij_ID_HH2007;
  vector[N_dyads_HH2008] v_ij_ID_HH2008;
  vector[N_dyads_HH2009] v_ij_ID_HH2009;
  vector[N_dyads_HH2010] v_ij_ID_HH2010;
  vector[N_dyads_HH2011] v_ij_ID_HH2011;
  vector[N_dyads_HH2012] v_ij_ID_HH2012;
  vector[N_dyads_HH2013] v_ij_ID_HH2013;
  vector[N_dyads_HH2014] v_ij_ID_HH2014;
  vector[N_dyads_HH2015] v_ij_ID_HH2015;
  vector[N_dyads_HH2016] v_ij_ID_HH2016;
  vector[N_dyads_HH2017] v_ij_ID_HH2017;
  vector[N_dyads_HH2018] v_ij_ID_HH2018;
  vector[N_dyads_KK2004] v_ij_ID_KK2004;
  vector[N_dyads_KK2005] v_ij_ID_KK2005;
  vector[N_dyads_KK2006] v_ij_ID_KK2006;
  vector[N_dyads_KK2007] v_ij_ID_KK2007;
  vector[N_dyads_KK2008] v_ij_ID_KK2008;
  vector[N_dyads_KK2009] v_ij_ID_KK2009;
  vector[N_dyads_KK2010] v_ij_ID_KK2010;
  vector[N_dyads_KK2011] v_ij_ID_KK2011;
  vector[N_dyads_KK2012] v_ij_ID_KK2012;
  vector[N_dyads_KK2013] v_ij_ID_KK2013;
  vector[N_dyads_KK2014] v_ij_ID_KK2014;
  vector[N_dyads_KK2015] v_ij_ID_KK2015;
  vector[N_dyads_KK2016] v_ij_ID_KK2016;
  vector[N_dyads_KK2017] v_ij_ID_KK2017;
  vector[N_dyads_KK2018] v_ij_ID_KK2018;
  vector[N_dyads_NN2008] v_ij_ID_NN2008;
  vector[N_dyads_NN2009] v_ij_ID_NN2009;
  vector[N_dyads_NN2010] v_ij_ID_NN2010;
  vector[N_dyads_NN2011] v_ij_ID_NN2011;
  vector[N_dyads_NN2012] v_ij_ID_NN2012;
  vector[N_dyads_NN2013] v_ij_ID_NN2013;
  vector[N_dyads_NN2014] v_ij_ID_NN2014;
  vector[N_dyads_NN2015] v_ij_ID_NN2015;
  vector[N_dyads_NN2016] v_ij_ID_NN2016;
  vector[N_dyads_NN2017] v_ij_ID_NN2017;
  vector[N_dyads_NN2018] v_ij_ID_NN2018;
  vector[N_dyads_SS2007] v_ij_ID_SS2007;
  vector[N_dyads_SS2008] v_ij_ID_SS2008;
  vector[N_dyads_SS2009] v_ij_ID_SS2009;
  vector[N_dyads_SS2010] v_ij_ID_SS2010;
  vector[N_dyads_SS2011] v_ij_ID_SS2011;
  vector[N_dyads_SS2012] v_ij_ID_SS2012;
  vector[N_dyads_SS2013] v_ij_ID_SS2013;
  vector[N_dyads_SS2014] v_ij_ID_SS2014;
  vector[N_dyads_SS2015] v_ij_ID_SS2015;
  vector[N_dyads_SS2016] v_ij_ID_SS2016;
  vector[N_dyads_SS2017] v_ij_ID_SS2017;
  vector[N_dyads_SS2018] v_ij_ID_SS2018;
  vector[N_dyads_VV2002] v_ij_ID_VV2002;
  vector[N_dyads_VV2003] v_ij_ID_VV2003;
  vector[N_dyads_VV2004] v_ij_ID_VV2004;
  vector[N_dyads_VV2005] v_ij_ID_VV2005;
  vector[N_dyads_VV2006] v_ij_ID_VV2006;
  vector[N_dyads_VV2007] v_ij_ID_VV2007;
  vector[N_dyads_VV2008] v_ij_ID_VV2008;
  vector[N_dyads_VV2009] v_ij_ID_VV2009;
  vector[N_dyads_VV2010] v_ij_ID_VV2010;
  vector[N_dyads_VV2011] v_ij_ID_VV2011;
  vector[N_dyads_VV2012] v_ij_ID_VV2012;
  vector[N_dyads_VV2013] v_ij_ID_VV2013;
  vector[N_dyads_VV2014] v_ij_ID_VV2014;
  vector[N_dyads_VV2015] v_ij_ID_VV2015;
  vector[N_dyads_VV2016] v_ij_ID_VV2016;
  vector[N_dyads_VV2017] v_ij_ID_VV2017;
  vector[N_dyads_VV2018] v_ij_ID_VV2018;
  vector[N_dyads_ZZ2003] v_ij_ID_ZZ2003;
  vector[N_dyads_ZZ2005] v_ij_ID_ZZ2005;
  vector[N_dyads_ZZ2006] v_ij_ID_ZZ2006;
  vector[N_dyads_ZZ2008] v_ij_ID_ZZ2008;
  vector[N_dyads_ZZ2009] v_ij_ID_ZZ2009;
  vector[N_dyads_ZZ2010] v_ij_ID_ZZ2010;
  vector[N_dyads_ZZ2011] v_ij_ID_ZZ2011;
  vector[N_dyads_ZZ2012] v_ij_ID_ZZ2012;
  vector[N_dyads_ZZ2013] v_ij_ID_ZZ2013;
  vector[N_dyads_ZZ2014] v_ij_ID_ZZ2014;
  vector[N_dyads_ZZ2015] v_ij_ID_ZZ2015;
  vector[N_dyads_ZZ2016] v_ij_ID_ZZ2016;
  vector[N_dyads_ZZ2017] v_ij_ID_ZZ2017;
  vector[N_dyads_ZZ2018] v_ij_ID_ZZ2018;
  vector[N_dyads_BB2019] v_ij_ID_BB2019;
    vector[N_dyads_CC2019] v_ij_ID_CC2019;
    vector[N_dyads_EE2019] v_ij_ID_EE2019;
    vector[N_dyads_GG2019] v_ij_ID_GG2019;
    vector[N_dyads_HH2019] v_ij_ID_HH2019;
    vector[N_dyads_KK2019] v_ij_ID_KK2019;
    vector[N_dyads_SS2019] v_ij_ID_SS2019;
    vector[N_dyads_VV2019] v_ij_ID_VV2019;
    vector[N_dyads_ZZ2019] v_ij_ID_ZZ2019;

	
	// Directed dyad effects for each group-year
    vector[N_BB2002] v_i2j_ID_BB2002;
    vector[N_BB2003] v_i2j_ID_BB2003;
    vector[N_BB2004] v_i2j_ID_BB2004;
    vector[N_BB2005] v_i2j_ID_BB2005;
    vector[N_BB2006] v_i2j_ID_BB2006;
    vector[N_BB2007] v_i2j_ID_BB2007;
    vector[N_BB2008] v_i2j_ID_BB2008;
    vector[N_BB2009] v_i2j_ID_BB2009;
    vector[N_BB2010] v_i2j_ID_BB2010;
    vector[N_BB2011] v_i2j_ID_BB2011;
    vector[N_BB2012] v_i2j_ID_BB2012;
    vector[N_BB2013] v_i2j_ID_BB2013;
    vector[N_BB2014] v_i2j_ID_BB2014;
    vector[N_BB2015] v_i2j_ID_BB2015;
    vector[N_BB2016] v_i2j_ID_BB2016;
    vector[N_BB2017] v_i2j_ID_BB2017;
    vector[N_BB2018] v_i2j_ID_BB2018;
    vector[N_CC2012] v_i2j_ID_CC2012;
    vector[N_CC2013] v_i2j_ID_CC2013;
    vector[N_CC2014] v_i2j_ID_CC2014;
    vector[N_CC2015] v_i2j_ID_CC2015;
    vector[N_CC2016] v_i2j_ID_CC2016;
    vector[N_CC2017] v_i2j_ID_CC2017;
    vector[N_CC2018] v_i2j_ID_CC2018;
    vector[N_DD2007] v_i2j_ID_DD2007;
    vector[N_DD2008] v_i2j_ID_DD2008;
    vector[N_DD2009] v_i2j_ID_DD2009;
    vector[N_DD2010] v_i2j_ID_DD2010;
    vector[N_DD2011] v_i2j_ID_DD2011;
    vector[N_DD2012] v_i2j_ID_DD2012;
    vector[N_DD2013] v_i2j_ID_DD2013;
    vector[N_EE2012] v_i2j_ID_EE2012;
    vector[N_EE2013] v_i2j_ID_EE2013;
    vector[N_EE2014] v_i2j_ID_EE2014;
    vector[N_EE2015] v_i2j_ID_EE2015;
    vector[N_EE2016] v_i2j_ID_EE2016;
    vector[N_EE2017] v_i2j_ID_EE2017;
    vector[N_EE2018] v_i2j_ID_EE2018;
    vector[N_GG2002] v_i2j_ID_GG2002;
    vector[N_GG2003] v_i2j_ID_GG2003;
    vector[N_GG2004] v_i2j_ID_GG2004;
    vector[N_GG2005] v_i2j_ID_GG2005;
    vector[N_GG2006] v_i2j_ID_GG2006;
    vector[N_GG2007] v_i2j_ID_GG2007;
    vector[N_GG2008] v_i2j_ID_GG2008;
    vector[N_GG2009] v_i2j_ID_GG2009;
    vector[N_GG2010] v_i2j_ID_GG2010;
    vector[N_GG2011] v_i2j_ID_GG2011;
    vector[N_GG2012] v_i2j_ID_GG2012;
    vector[N_GG2013] v_i2j_ID_GG2013;
    vector[N_GG2014] v_i2j_ID_GG2014;
    vector[N_GG2015] v_i2j_ID_GG2015;
    vector[N_GG2016] v_i2j_ID_GG2016;
    vector[N_GG2017] v_i2j_ID_GG2017;
    vector[N_GG2018] v_i2j_ID_GG2018;
    vector[N_HH2003] v_i2j_ID_HH2003;
    vector[N_HH2004] v_i2j_ID_HH2004;
    vector[N_HH2005] v_i2j_ID_HH2005;
    vector[N_HH2006] v_i2j_ID_HH2006;
    vector[N_HH2007] v_i2j_ID_HH2007;
    vector[N_HH2008] v_i2j_ID_HH2008;
    vector[N_HH2009] v_i2j_ID_HH2009;
    vector[N_HH2010] v_i2j_ID_HH2010;
    vector[N_HH2011] v_i2j_ID_HH2011;
    vector[N_HH2012] v_i2j_ID_HH2012;
    vector[N_HH2013] v_i2j_ID_HH2013;
    vector[N_HH2014] v_i2j_ID_HH2014;
    vector[N_HH2015] v_i2j_ID_HH2015;
    vector[N_HH2016] v_i2j_ID_HH2016;
    vector[N_HH2017] v_i2j_ID_HH2017;
    vector[N_HH2018] v_i2j_ID_HH2018;
    vector[N_KK2004] v_i2j_ID_KK2004;
    vector[N_KK2005] v_i2j_ID_KK2005;
    vector[N_KK2006] v_i2j_ID_KK2006;
    vector[N_KK2007] v_i2j_ID_KK2007;
    vector[N_KK2008] v_i2j_ID_KK2008;
    vector[N_KK2009] v_i2j_ID_KK2009;
    vector[N_KK2010] v_i2j_ID_KK2010;
    vector[N_KK2011] v_i2j_ID_KK2011;
    vector[N_KK2012] v_i2j_ID_KK2012;
    vector[N_KK2013] v_i2j_ID_KK2013;
    vector[N_KK2014] v_i2j_ID_KK2014;
    vector[N_KK2015] v_i2j_ID_KK2015;
    vector[N_KK2016] v_i2j_ID_KK2016;
    vector[N_KK2017] v_i2j_ID_KK2017;
    vector[N_KK2018] v_i2j_ID_KK2018;
    vector[N_NN2008] v_i2j_ID_NN2008;
    vector[N_NN2009] v_i2j_ID_NN2009;
    vector[N_NN2010] v_i2j_ID_NN2010;
    vector[N_NN2011] v_i2j_ID_NN2011;
    vector[N_NN2012] v_i2j_ID_NN2012;
    vector[N_NN2013] v_i2j_ID_NN2013;
    vector[N_NN2014] v_i2j_ID_NN2014;
    vector[N_NN2015] v_i2j_ID_NN2015;
    vector[N_NN2016] v_i2j_ID_NN2016;
    vector[N_NN2017] v_i2j_ID_NN2017;
    vector[N_NN2018] v_i2j_ID_NN2018;
    vector[N_SS2007] v_i2j_ID_SS2007;
    vector[N_SS2008] v_i2j_ID_SS2008;
    vector[N_SS2009] v_i2j_ID_SS2009;
    vector[N_SS2010] v_i2j_ID_SS2010;
    vector[N_SS2011] v_i2j_ID_SS2011;
    vector[N_SS2012] v_i2j_ID_SS2012;
    vector[N_SS2013] v_i2j_ID_SS2013;
    vector[N_SS2014] v_i2j_ID_SS2014;
    vector[N_SS2015] v_i2j_ID_SS2015;
    vector[N_SS2016] v_i2j_ID_SS2016;
    vector[N_SS2017] v_i2j_ID_SS2017;
    vector[N_SS2018] v_i2j_ID_SS2018;
    vector[N_VV2002] v_i2j_ID_VV2002;
    vector[N_VV2003] v_i2j_ID_VV2003;
    vector[N_VV2004] v_i2j_ID_VV2004;
    vector[N_VV2005] v_i2j_ID_VV2005;
    vector[N_VV2006] v_i2j_ID_VV2006;
    vector[N_VV2007] v_i2j_ID_VV2007;
    vector[N_VV2008] v_i2j_ID_VV2008;
    vector[N_VV2009] v_i2j_ID_VV2009;
    vector[N_VV2010] v_i2j_ID_VV2010;
    vector[N_VV2011] v_i2j_ID_VV2011;
    vector[N_VV2012] v_i2j_ID_VV2012;
    vector[N_VV2013] v_i2j_ID_VV2013;
    vector[N_VV2014] v_i2j_ID_VV2014;
    vector[N_VV2015] v_i2j_ID_VV2015;
    vector[N_VV2016] v_i2j_ID_VV2016;
    vector[N_VV2017] v_i2j_ID_VV2017;
    vector[N_VV2018] v_i2j_ID_VV2018;
    vector[N_ZZ2003] v_i2j_ID_ZZ2003;
    vector[N_ZZ2005] v_i2j_ID_ZZ2005;
    vector[N_ZZ2006] v_i2j_ID_ZZ2006;
    vector[N_ZZ2008] v_i2j_ID_ZZ2008;
    vector[N_ZZ2009] v_i2j_ID_ZZ2009;
    vector[N_ZZ2010] v_i2j_ID_ZZ2010;
    vector[N_ZZ2011] v_i2j_ID_ZZ2011;
    vector[N_ZZ2012] v_i2j_ID_ZZ2012;
    vector[N_ZZ2013] v_i2j_ID_ZZ2013;
    vector[N_ZZ2014] v_i2j_ID_ZZ2014;
    vector[N_ZZ2015] v_i2j_ID_ZZ2015;
    vector[N_ZZ2016] v_i2j_ID_ZZ2016;
    vector[N_ZZ2017] v_i2j_ID_ZZ2017;
    vector[N_ZZ2018] v_i2j_ID_ZZ2018;
    vector[N_BB2019] v_i2j_ID_BB2019;
    vector[N_CC2019] v_i2j_ID_CC2019;
    vector[N_EE2019] v_i2j_ID_EE2019;
    vector[N_GG2019] v_i2j_ID_GG2019;
    vector[N_HH2019] v_i2j_ID_HH2019;
    vector[N_KK2019] v_i2j_ID_KK2019;
    vector[N_SS2019] v_i2j_ID_SS2019;
    vector[N_VV2019] v_i2j_ID_VV2019;
    vector[N_ZZ2019] v_i2j_ID_ZZ2019;

}

transformed parameters{
	// Define all individual-level matrices for group years
	matrix[N_i__j_ID_BB2002,2] v_i__j_ID_BB2002;
  matrix[N_i__j_ID_BB2003,2] v_i__j_ID_BB2003;
  matrix[N_i__j_ID_BB2004,2] v_i__j_ID_BB2004;
  matrix[N_i__j_ID_BB2005,2] v_i__j_ID_BB2005;
  matrix[N_i__j_ID_BB2006,2] v_i__j_ID_BB2006;
  matrix[N_i__j_ID_BB2007,2] v_i__j_ID_BB2007;
  matrix[N_i__j_ID_BB2008,2] v_i__j_ID_BB2008;
  matrix[N_i__j_ID_BB2009,2] v_i__j_ID_BB2009;
  matrix[N_i__j_ID_BB2010,2] v_i__j_ID_BB2010;
  matrix[N_i__j_ID_BB2011,2] v_i__j_ID_BB2011;
  matrix[N_i__j_ID_BB2012,2] v_i__j_ID_BB2012;
  matrix[N_i__j_ID_BB2013,2] v_i__j_ID_BB2013;
  matrix[N_i__j_ID_BB2014,2] v_i__j_ID_BB2014;
  matrix[N_i__j_ID_BB2015,2] v_i__j_ID_BB2015;
  matrix[N_i__j_ID_BB2016,2] v_i__j_ID_BB2016;
  matrix[N_i__j_ID_BB2017,2] v_i__j_ID_BB2017;
  matrix[N_i__j_ID_BB2018,2] v_i__j_ID_BB2018;
  matrix[N_i__j_ID_CC2012,2] v_i__j_ID_CC2012;
  matrix[N_i__j_ID_CC2013,2] v_i__j_ID_CC2013;
  matrix[N_i__j_ID_CC2014,2] v_i__j_ID_CC2014;
  matrix[N_i__j_ID_CC2015,2] v_i__j_ID_CC2015;
  matrix[N_i__j_ID_CC2016,2] v_i__j_ID_CC2016;
  matrix[N_i__j_ID_CC2017,2] v_i__j_ID_CC2017;
  matrix[N_i__j_ID_CC2018,2] v_i__j_ID_CC2018;
  matrix[N_i__j_ID_DD2007,2] v_i__j_ID_DD2007;
  matrix[N_i__j_ID_DD2008,2] v_i__j_ID_DD2008;
  matrix[N_i__j_ID_DD2009,2] v_i__j_ID_DD2009;
  matrix[N_i__j_ID_DD2010,2] v_i__j_ID_DD2010;
  matrix[N_i__j_ID_DD2011,2] v_i__j_ID_DD2011;
  matrix[N_i__j_ID_DD2012,2] v_i__j_ID_DD2012;
  matrix[N_i__j_ID_DD2013,2] v_i__j_ID_DD2013;
  matrix[N_i__j_ID_EE2012,2] v_i__j_ID_EE2012;
  matrix[N_i__j_ID_EE2013,2] v_i__j_ID_EE2013;
  matrix[N_i__j_ID_EE2014,2] v_i__j_ID_EE2014;
  matrix[N_i__j_ID_EE2015,2] v_i__j_ID_EE2015;
  matrix[N_i__j_ID_EE2016,2] v_i__j_ID_EE2016;
  matrix[N_i__j_ID_EE2017,2] v_i__j_ID_EE2017;
  matrix[N_i__j_ID_EE2018,2] v_i__j_ID_EE2018;
  matrix[N_i__j_ID_GG2002,2] v_i__j_ID_GG2002;
  matrix[N_i__j_ID_GG2003,2] v_i__j_ID_GG2003;
  matrix[N_i__j_ID_GG2004,2] v_i__j_ID_GG2004;
  matrix[N_i__j_ID_GG2005,2] v_i__j_ID_GG2005;
  matrix[N_i__j_ID_GG2006,2] v_i__j_ID_GG2006;
  matrix[N_i__j_ID_GG2007,2] v_i__j_ID_GG2007;
  matrix[N_i__j_ID_GG2008,2] v_i__j_ID_GG2008;
  matrix[N_i__j_ID_GG2009,2] v_i__j_ID_GG2009;
  matrix[N_i__j_ID_GG2010,2] v_i__j_ID_GG2010;
  matrix[N_i__j_ID_GG2011,2] v_i__j_ID_GG2011;
  matrix[N_i__j_ID_GG2012,2] v_i__j_ID_GG2012;
  matrix[N_i__j_ID_GG2013,2] v_i__j_ID_GG2013;
  matrix[N_i__j_ID_GG2014,2] v_i__j_ID_GG2014;
  matrix[N_i__j_ID_GG2015,2] v_i__j_ID_GG2015;
  matrix[N_i__j_ID_GG2016,2] v_i__j_ID_GG2016;
  matrix[N_i__j_ID_GG2017,2] v_i__j_ID_GG2017;
  matrix[N_i__j_ID_GG2018,2] v_i__j_ID_GG2018;
  matrix[N_i__j_ID_HH2003,2] v_i__j_ID_HH2003;
  matrix[N_i__j_ID_HH2004,2] v_i__j_ID_HH2004;
  matrix[N_i__j_ID_HH2005,2] v_i__j_ID_HH2005;
  matrix[N_i__j_ID_HH2006,2] v_i__j_ID_HH2006;
  matrix[N_i__j_ID_HH2007,2] v_i__j_ID_HH2007;
  matrix[N_i__j_ID_HH2008,2] v_i__j_ID_HH2008;
  matrix[N_i__j_ID_HH2009,2] v_i__j_ID_HH2009;
  matrix[N_i__j_ID_HH2010,2] v_i__j_ID_HH2010;
  matrix[N_i__j_ID_HH2011,2] v_i__j_ID_HH2011;
  matrix[N_i__j_ID_HH2012,2] v_i__j_ID_HH2012;
  matrix[N_i__j_ID_HH2013,2] v_i__j_ID_HH2013;
  matrix[N_i__j_ID_HH2014,2] v_i__j_ID_HH2014;
  matrix[N_i__j_ID_HH2015,2] v_i__j_ID_HH2015;
  matrix[N_i__j_ID_HH2016,2] v_i__j_ID_HH2016;
  matrix[N_i__j_ID_HH2017,2] v_i__j_ID_HH2017;
  matrix[N_i__j_ID_HH2018,2] v_i__j_ID_HH2018;
  matrix[N_i__j_ID_KK2004,2] v_i__j_ID_KK2004;
  matrix[N_i__j_ID_KK2005,2] v_i__j_ID_KK2005;
  matrix[N_i__j_ID_KK2006,2] v_i__j_ID_KK2006;
  matrix[N_i__j_ID_KK2007,2] v_i__j_ID_KK2007;
  matrix[N_i__j_ID_KK2008,2] v_i__j_ID_KK2008;
  matrix[N_i__j_ID_KK2009,2] v_i__j_ID_KK2009;
  matrix[N_i__j_ID_KK2010,2] v_i__j_ID_KK2010;
  matrix[N_i__j_ID_KK2011,2] v_i__j_ID_KK2011;
  matrix[N_i__j_ID_KK2012,2] v_i__j_ID_KK2012;
  matrix[N_i__j_ID_KK2013,2] v_i__j_ID_KK2013;
  matrix[N_i__j_ID_KK2014,2] v_i__j_ID_KK2014;
  matrix[N_i__j_ID_KK2015,2] v_i__j_ID_KK2015;
  matrix[N_i__j_ID_KK2016,2] v_i__j_ID_KK2016;
  matrix[N_i__j_ID_KK2017,2] v_i__j_ID_KK2017;
  matrix[N_i__j_ID_KK2018,2] v_i__j_ID_KK2018;
  matrix[N_i__j_ID_NN2008,2] v_i__j_ID_NN2008;
  matrix[N_i__j_ID_NN2009,2] v_i__j_ID_NN2009;
  matrix[N_i__j_ID_NN2010,2] v_i__j_ID_NN2010;
  matrix[N_i__j_ID_NN2011,2] v_i__j_ID_NN2011;
  matrix[N_i__j_ID_NN2012,2] v_i__j_ID_NN2012;
  matrix[N_i__j_ID_NN2013,2] v_i__j_ID_NN2013;
  matrix[N_i__j_ID_NN2014,2] v_i__j_ID_NN2014;
  matrix[N_i__j_ID_NN2015,2] v_i__j_ID_NN2015;
  matrix[N_i__j_ID_NN2016,2] v_i__j_ID_NN2016;
  matrix[N_i__j_ID_NN2017,2] v_i__j_ID_NN2017;
  matrix[N_i__j_ID_NN2018,2] v_i__j_ID_NN2018;
  matrix[N_i__j_ID_SS2007,2] v_i__j_ID_SS2007;
  matrix[N_i__j_ID_SS2008,2] v_i__j_ID_SS2008;
  matrix[N_i__j_ID_SS2009,2] v_i__j_ID_SS2009;
  matrix[N_i__j_ID_SS2010,2] v_i__j_ID_SS2010;
  matrix[N_i__j_ID_SS2011,2] v_i__j_ID_SS2011;
  matrix[N_i__j_ID_SS2012,2] v_i__j_ID_SS2012;
  matrix[N_i__j_ID_SS2013,2] v_i__j_ID_SS2013;
  matrix[N_i__j_ID_SS2014,2] v_i__j_ID_SS2014;
  matrix[N_i__j_ID_SS2015,2] v_i__j_ID_SS2015;
  matrix[N_i__j_ID_SS2016,2] v_i__j_ID_SS2016;
  matrix[N_i__j_ID_SS2017,2] v_i__j_ID_SS2017;
  matrix[N_i__j_ID_SS2018,2] v_i__j_ID_SS2018;
  matrix[N_i__j_ID_VV2002,2] v_i__j_ID_VV2002;
  matrix[N_i__j_ID_VV2003,2] v_i__j_ID_VV2003;
  matrix[N_i__j_ID_VV2004,2] v_i__j_ID_VV2004;
  matrix[N_i__j_ID_VV2005,2] v_i__j_ID_VV2005;
  matrix[N_i__j_ID_VV2006,2] v_i__j_ID_VV2006;
  matrix[N_i__j_ID_VV2007,2] v_i__j_ID_VV2007;
  matrix[N_i__j_ID_VV2008,2] v_i__j_ID_VV2008;
  matrix[N_i__j_ID_VV2009,2] v_i__j_ID_VV2009;
  matrix[N_i__j_ID_VV2010,2] v_i__j_ID_VV2010;
  matrix[N_i__j_ID_VV2011,2] v_i__j_ID_VV2011;
  matrix[N_i__j_ID_VV2012,2] v_i__j_ID_VV2012;
  matrix[N_i__j_ID_VV2013,2] v_i__j_ID_VV2013;
  matrix[N_i__j_ID_VV2014,2] v_i__j_ID_VV2014;
  matrix[N_i__j_ID_VV2015,2] v_i__j_ID_VV2015;
  matrix[N_i__j_ID_VV2016,2] v_i__j_ID_VV2016;
  matrix[N_i__j_ID_VV2017,2] v_i__j_ID_VV2017;
  matrix[N_i__j_ID_VV2018,2] v_i__j_ID_VV2018;
  matrix[N_i__j_ID_ZZ2003,2] v_i__j_ID_ZZ2003;
  matrix[N_i__j_ID_ZZ2005,2] v_i__j_ID_ZZ2005;
  matrix[N_i__j_ID_ZZ2006,2] v_i__j_ID_ZZ2006;
  matrix[N_i__j_ID_ZZ2008,2] v_i__j_ID_ZZ2008;
  matrix[N_i__j_ID_ZZ2009,2] v_i__j_ID_ZZ2009;
  matrix[N_i__j_ID_ZZ2010,2] v_i__j_ID_ZZ2010;
  matrix[N_i__j_ID_ZZ2011,2] v_i__j_ID_ZZ2011;
  matrix[N_i__j_ID_ZZ2012,2] v_i__j_ID_ZZ2012;
  matrix[N_i__j_ID_ZZ2013,2] v_i__j_ID_ZZ2013;
  matrix[N_i__j_ID_ZZ2014,2] v_i__j_ID_ZZ2014;
  matrix[N_i__j_ID_ZZ2015,2] v_i__j_ID_ZZ2015;
  matrix[N_i__j_ID_ZZ2016,2] v_i__j_ID_ZZ2016;
  matrix[N_i__j_ID_ZZ2017,2] v_i__j_ID_ZZ2017;
  matrix[N_i__j_ID_ZZ2018,2] v_i__j_ID_ZZ2018;
  matrix[N_i__j_ID_BB2019,2] v_i__j_ID_BB2019;
    matrix[N_i__j_ID_CC2019,2] v_i__j_ID_CC2019;
    matrix[N_i__j_ID_EE2019,2] v_i__j_ID_EE2019;
    matrix[N_i__j_ID_GG2019,2] v_i__j_ID_GG2019;
    matrix[N_i__j_ID_HH2019,2] v_i__j_ID_HH2019;
    matrix[N_i__j_ID_KK2019,2] v_i__j_ID_KK2019;
    matrix[N_i__j_ID_SS2019,2] v_i__j_ID_SS2019;
    matrix[N_i__j_ID_VV2019,2] v_i__j_ID_VV2019;
    matrix[N_i__j_ID_ZZ2019,2] v_i__j_ID_ZZ2019;

	
	// Calculate node-level effects from Cholesky matrix
	v_i__j_ID_BB2002 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_BB2002)';
  v_i__j_ID_BB2003 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_BB2003)';
  v_i__j_ID_BB2004 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_BB2004)';
  v_i__j_ID_BB2005 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_BB2005)';
  v_i__j_ID_BB2006 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_BB2006)';
  v_i__j_ID_BB2007 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_BB2007)';
  v_i__j_ID_BB2008 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_BB2008)';
  v_i__j_ID_BB2009 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_BB2009)';
  v_i__j_ID_BB2010 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_BB2010)';
  v_i__j_ID_BB2011 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_BB2011)';
  v_i__j_ID_BB2012 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_BB2012)';
  v_i__j_ID_BB2013 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_BB2013)';
  v_i__j_ID_BB2014 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_BB2014)';
  v_i__j_ID_BB2015 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_BB2015)';
  v_i__j_ID_BB2016 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_BB2016)';
  v_i__j_ID_BB2017 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_BB2017)';
  v_i__j_ID_BB2018 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_BB2018)';
  v_i__j_ID_CC2012 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_CC2012)';
  v_i__j_ID_CC2013 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_CC2013)';
  v_i__j_ID_CC2014 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_CC2014)';
  v_i__j_ID_CC2015 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_CC2015)';
  v_i__j_ID_CC2016 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_CC2016)';
  v_i__j_ID_CC2017 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_CC2017)';
  v_i__j_ID_CC2018 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_CC2018)';
  v_i__j_ID_DD2007 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_DD2007)';
  v_i__j_ID_DD2008 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_DD2008)';
  v_i__j_ID_DD2009 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_DD2009)';
  v_i__j_ID_DD2010 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_DD2010)';
  v_i__j_ID_DD2011 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_DD2011)';
  v_i__j_ID_DD2012 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_DD2012)';
  v_i__j_ID_DD2013 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_DD2013)';
  v_i__j_ID_EE2012 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_EE2012)';
  v_i__j_ID_EE2013 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_EE2013)';
  v_i__j_ID_EE2014 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_EE2014)';
  v_i__j_ID_EE2015 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_EE2015)';
  v_i__j_ID_EE2016 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_EE2016)';
  v_i__j_ID_EE2017 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_EE2017)';
  v_i__j_ID_EE2018 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_EE2018)';
  v_i__j_ID_GG2002 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_GG2002)';
  v_i__j_ID_GG2003 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_GG2003)';
  v_i__j_ID_GG2004 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_GG2004)';
  v_i__j_ID_GG2005 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_GG2005)';
  v_i__j_ID_GG2006 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_GG2006)';
  v_i__j_ID_GG2007 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_GG2007)';
  v_i__j_ID_GG2008 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_GG2008)';
  v_i__j_ID_GG2009 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_GG2009)';
  v_i__j_ID_GG2010 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_GG2010)';
  v_i__j_ID_GG2011 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_GG2011)';
  v_i__j_ID_GG2012 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_GG2012)';
  v_i__j_ID_GG2013 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_GG2013)';
  v_i__j_ID_GG2014 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_GG2014)';
  v_i__j_ID_GG2015 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_GG2015)';
  v_i__j_ID_GG2016 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_GG2016)';
  v_i__j_ID_GG2017 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_GG2017)';
  v_i__j_ID_GG2018 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_GG2018)';
  v_i__j_ID_HH2003 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_HH2003)';
  v_i__j_ID_HH2004 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_HH2004)';
  v_i__j_ID_HH2005 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_HH2005)';
  v_i__j_ID_HH2006 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_HH2006)';
  v_i__j_ID_HH2007 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_HH2007)';
  v_i__j_ID_HH2008 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_HH2008)';
  v_i__j_ID_HH2009 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_HH2009)';
  v_i__j_ID_HH2010 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_HH2010)';
  v_i__j_ID_HH2011 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_HH2011)';
  v_i__j_ID_HH2012 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_HH2012)';
  v_i__j_ID_HH2013 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_HH2013)';
  v_i__j_ID_HH2014 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_HH2014)';
  v_i__j_ID_HH2015 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_HH2015)';
  v_i__j_ID_HH2016 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_HH2016)';
  v_i__j_ID_HH2017 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_HH2017)';
  v_i__j_ID_HH2018 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_HH2018)';
  v_i__j_ID_KK2004 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_KK2004)';
  v_i__j_ID_KK2005 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_KK2005)';
  v_i__j_ID_KK2006 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_KK2006)';
  v_i__j_ID_KK2007 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_KK2007)';
  v_i__j_ID_KK2008 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_KK2008)';
  v_i__j_ID_KK2009 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_KK2009)';
  v_i__j_ID_KK2010 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_KK2010)';
  v_i__j_ID_KK2011 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_KK2011)';
  v_i__j_ID_KK2012 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_KK2012)';
  v_i__j_ID_KK2013 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_KK2013)';
  v_i__j_ID_KK2014 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_KK2014)';
  v_i__j_ID_KK2015 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_KK2015)';
  v_i__j_ID_KK2016 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_KK2016)';
  v_i__j_ID_KK2017 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_KK2017)';
  v_i__j_ID_KK2018 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_KK2018)';
  v_i__j_ID_NN2008 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_NN2008)';
  v_i__j_ID_NN2009 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_NN2009)';
  v_i__j_ID_NN2010 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_NN2010)';
  v_i__j_ID_NN2011 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_NN2011)';
  v_i__j_ID_NN2012 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_NN2012)';
  v_i__j_ID_NN2013 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_NN2013)';
  v_i__j_ID_NN2014 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_NN2014)';
  v_i__j_ID_NN2015 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_NN2015)';
  v_i__j_ID_NN2016 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_NN2016)';
  v_i__j_ID_NN2017 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_NN2017)';
  v_i__j_ID_NN2018 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_NN2018)';
  v_i__j_ID_SS2007 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_SS2007)';
  v_i__j_ID_SS2008 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_SS2008)';
  v_i__j_ID_SS2009 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_SS2009)';
  v_i__j_ID_SS2010 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_SS2010)';
  v_i__j_ID_SS2011 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_SS2011)';
  v_i__j_ID_SS2012 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_SS2012)';
  v_i__j_ID_SS2013 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_SS2013)';
  v_i__j_ID_SS2014 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_SS2014)';
  v_i__j_ID_SS2015 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_SS2015)';
  v_i__j_ID_SS2016 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_SS2016)';
  v_i__j_ID_SS2017 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_SS2017)';
  v_i__j_ID_SS2018 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_SS2018)';
  v_i__j_ID_VV2002 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_VV2002)';
  v_i__j_ID_VV2003 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_VV2003)';
  v_i__j_ID_VV2004 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_VV2004)';
  v_i__j_ID_VV2005 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_VV2005)';
  v_i__j_ID_VV2006 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_VV2006)';
  v_i__j_ID_VV2007 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_VV2007)';
  v_i__j_ID_VV2008 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_VV2008)';
  v_i__j_ID_VV2009 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_VV2009)';
  v_i__j_ID_VV2010 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_VV2010)';
  v_i__j_ID_VV2011 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_VV2011)';
  v_i__j_ID_VV2012 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_VV2012)';
  v_i__j_ID_VV2013 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_VV2013)';
  v_i__j_ID_VV2014 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_VV2014)';
  v_i__j_ID_VV2015 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_VV2015)';
  v_i__j_ID_VV2016 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_VV2016)';
  v_i__j_ID_VV2017 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_VV2017)';
  v_i__j_ID_VV2018 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_VV2018)';
  v_i__j_ID_ZZ2003 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_ZZ2003)';
  v_i__j_ID_ZZ2005 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_ZZ2005)';
  v_i__j_ID_ZZ2006 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_ZZ2006)';
  v_i__j_ID_ZZ2008 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_ZZ2008)';
  v_i__j_ID_ZZ2009 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_ZZ2009)';
  v_i__j_ID_ZZ2010 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_ZZ2010)';
  v_i__j_ID_ZZ2011 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_ZZ2011)';
  v_i__j_ID_ZZ2012 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_ZZ2012)';
  v_i__j_ID_ZZ2013 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_ZZ2013)';
  v_i__j_ID_ZZ2014 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_ZZ2014)';
  v_i__j_ID_ZZ2015 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_ZZ2015)';
  v_i__j_ID_ZZ2016 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_ZZ2016)';
  v_i__j_ID_ZZ2017 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_ZZ2017)';
  v_i__j_ID_ZZ2018 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_ZZ2018)';
  v_i__j_ID_BB2019 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_BB2019)';
    v_i__j_ID_CC2019 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_CC2019)';
    v_i__j_ID_EE2019 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_EE2019)';
    v_i__j_ID_GG2019 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_GG2019)';
    v_i__j_ID_HH2019 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_HH2019)';
    v_i__j_ID_KK2019 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_KK2019)';
    v_i__j_ID_SS2019 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_SS2019)';
    v_i__j_ID_VV2019 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_VV2019)';
    v_i__j_ID_ZZ2019 = (diag_pre_multiply ( sigma_i__j_ID, L_Rho_i__j_ID ) * z_i__j_ID_ZZ2019)';
	
}

model{
    vector[N_BB2002] p_BB2002;
    vector[N_BB2003] p_BB2003;
    vector[N_BB2004] p_BB2004;
    vector[N_BB2005] p_BB2005;
    vector[N_BB2006] p_BB2006;
    vector[N_BB2007] p_BB2007;
    vector[N_BB2008] p_BB2008;
    vector[N_BB2009] p_BB2009;
    vector[N_BB2010] p_BB2010;
    vector[N_BB2011] p_BB2011;
    vector[N_BB2012] p_BB2012;
    vector[N_BB2013] p_BB2013;
    vector[N_BB2014] p_BB2014;
    vector[N_BB2015] p_BB2015;
    vector[N_BB2016] p_BB2016;
    vector[N_BB2017] p_BB2017;
    vector[N_BB2018] p_BB2018;
    vector[N_CC2012] p_CC2012;
    vector[N_CC2013] p_CC2013;
    vector[N_CC2014] p_CC2014;
    vector[N_CC2015] p_CC2015;
    vector[N_CC2016] p_CC2016;
    vector[N_CC2017] p_CC2017;
    vector[N_CC2018] p_CC2018;
    vector[N_DD2007] p_DD2007;
    vector[N_DD2008] p_DD2008;
    vector[N_DD2009] p_DD2009;
    vector[N_DD2010] p_DD2010;
    vector[N_DD2011] p_DD2011;
    vector[N_DD2012] p_DD2012;
    vector[N_DD2013] p_DD2013;
    vector[N_EE2012] p_EE2012;
    vector[N_EE2013] p_EE2013;
    vector[N_EE2014] p_EE2014;
    vector[N_EE2015] p_EE2015;
    vector[N_EE2016] p_EE2016;
    vector[N_EE2017] p_EE2017;
    vector[N_EE2018] p_EE2018;
    vector[N_GG2002] p_GG2002;
    vector[N_GG2003] p_GG2003;
    vector[N_GG2004] p_GG2004;
    vector[N_GG2005] p_GG2005;
    vector[N_GG2006] p_GG2006;
    vector[N_GG2007] p_GG2007;
    vector[N_GG2008] p_GG2008;
    vector[N_GG2009] p_GG2009;
    vector[N_GG2010] p_GG2010;
    vector[N_GG2011] p_GG2011;
    vector[N_GG2012] p_GG2012;
    vector[N_GG2013] p_GG2013;
    vector[N_GG2014] p_GG2014;
    vector[N_GG2015] p_GG2015;
    vector[N_GG2016] p_GG2016;
    vector[N_GG2017] p_GG2017;
    vector[N_GG2018] p_GG2018;
    vector[N_HH2003] p_HH2003;
    vector[N_HH2004] p_HH2004;
    vector[N_HH2005] p_HH2005;
    vector[N_HH2006] p_HH2006;
    vector[N_HH2007] p_HH2007;
    vector[N_HH2008] p_HH2008;
    vector[N_HH2009] p_HH2009;
    vector[N_HH2010] p_HH2010;
    vector[N_HH2011] p_HH2011;
    vector[N_HH2012] p_HH2012;
    vector[N_HH2013] p_HH2013;
    vector[N_HH2014] p_HH2014;
    vector[N_HH2015] p_HH2015;
    vector[N_HH2016] p_HH2016;
    vector[N_HH2017] p_HH2017;
    vector[N_HH2018] p_HH2018;
    vector[N_KK2004] p_KK2004;
    vector[N_KK2005] p_KK2005;
    vector[N_KK2006] p_KK2006;
    vector[N_KK2007] p_KK2007;
    vector[N_KK2008] p_KK2008;
    vector[N_KK2009] p_KK2009;
    vector[N_KK2010] p_KK2010;
    vector[N_KK2011] p_KK2011;
    vector[N_KK2012] p_KK2012;
    vector[N_KK2013] p_KK2013;
    vector[N_KK2014] p_KK2014;
    vector[N_KK2015] p_KK2015;
    vector[N_KK2016] p_KK2016;
    vector[N_KK2017] p_KK2017;
    vector[N_KK2018] p_KK2018;
    vector[N_NN2008] p_NN2008;
    vector[N_NN2009] p_NN2009;
    vector[N_NN2010] p_NN2010;
    vector[N_NN2011] p_NN2011;
    vector[N_NN2012] p_NN2012;
    vector[N_NN2013] p_NN2013;
    vector[N_NN2014] p_NN2014;
    vector[N_NN2015] p_NN2015;
    vector[N_NN2016] p_NN2016;
    vector[N_NN2017] p_NN2017;
    vector[N_NN2018] p_NN2018;
    vector[N_SS2007] p_SS2007;
    vector[N_SS2008] p_SS2008;
    vector[N_SS2009] p_SS2009;
    vector[N_SS2010] p_SS2010;
    vector[N_SS2011] p_SS2011;
    vector[N_SS2012] p_SS2012;
    vector[N_SS2013] p_SS2013;
    vector[N_SS2014] p_SS2014;
    vector[N_SS2015] p_SS2015;
    vector[N_SS2016] p_SS2016;
    vector[N_SS2017] p_SS2017;
    vector[N_SS2018] p_SS2018;
    vector[N_VV2002] p_VV2002;
    vector[N_VV2003] p_VV2003;
    vector[N_VV2004] p_VV2004;
    vector[N_VV2005] p_VV2005;
    vector[N_VV2006] p_VV2006;
    vector[N_VV2007] p_VV2007;
    vector[N_VV2008] p_VV2008;
    vector[N_VV2009] p_VV2009;
    vector[N_VV2010] p_VV2010;
    vector[N_VV2011] p_VV2011;
    vector[N_VV2012] p_VV2012;
    vector[N_VV2013] p_VV2013;
    vector[N_VV2014] p_VV2014;
    vector[N_VV2015] p_VV2015;
    vector[N_VV2016] p_VV2016;
    vector[N_VV2017] p_VV2017;
    vector[N_VV2018] p_VV2018;
    vector[N_ZZ2003] p_ZZ2003;
    vector[N_ZZ2005] p_ZZ2005;
    vector[N_ZZ2006] p_ZZ2006;
    vector[N_ZZ2008] p_ZZ2008;
    vector[N_ZZ2009] p_ZZ2009;
    vector[N_ZZ2010] p_ZZ2010;
    vector[N_ZZ2011] p_ZZ2011;
    vector[N_ZZ2012] p_ZZ2012;
    vector[N_ZZ2013] p_ZZ2013;
    vector[N_ZZ2014] p_ZZ2014;
    vector[N_ZZ2015] p_ZZ2015;
    vector[N_ZZ2016] p_ZZ2016;
    vector[N_ZZ2017] p_ZZ2017;
    vector[N_ZZ2018] p_ZZ2018;
    vector[N_BB2019] p_BB2019;
    vector[N_CC2019] p_CC2019;
    vector[N_EE2019] p_EE2019;
    vector[N_GG2019] p_GG2019;
    vector[N_HH2019] p_HH2019;
    vector[N_KK2019] p_KK2019;
    vector[N_SS2019] p_SS2019;
    vector[N_VV2019] p_VV2019;
    vector[N_ZZ2019] p_ZZ2019;
    
    //priors
    a ~ normal( 0 , 5 ); // Overall intercept
    
    // group level effects
    v_group_ID ~ normal( 0, 1 );
    
    // Node level effects
    to_vector (z_i__j_ID_BB2002) ~ normal(0,1);
    to_vector (z_i__j_ID_BB2003) ~ normal(0,1);
    to_vector (z_i__j_ID_BB2004) ~ normal(0,1);
    to_vector (z_i__j_ID_BB2005) ~ normal(0,1);
    to_vector (z_i__j_ID_BB2006) ~ normal(0,1);
    to_vector (z_i__j_ID_BB2007) ~ normal(0,1);
    to_vector (z_i__j_ID_BB2008) ~ normal(0,1);
    to_vector (z_i__j_ID_BB2009) ~ normal(0,1);
    to_vector (z_i__j_ID_BB2010) ~ normal(0,1);
    to_vector (z_i__j_ID_BB2011) ~ normal(0,1);
    to_vector (z_i__j_ID_BB2012) ~ normal(0,1);
    to_vector (z_i__j_ID_BB2013) ~ normal(0,1);
    to_vector (z_i__j_ID_BB2014) ~ normal(0,1);
    to_vector (z_i__j_ID_BB2015) ~ normal(0,1);
    to_vector (z_i__j_ID_BB2016) ~ normal(0,1);
    to_vector (z_i__j_ID_BB2017) ~ normal(0,1);
    to_vector (z_i__j_ID_BB2018) ~ normal(0,1);
    to_vector (z_i__j_ID_CC2012) ~ normal(0,1);
    to_vector (z_i__j_ID_CC2013) ~ normal(0,1);
    to_vector (z_i__j_ID_CC2014) ~ normal(0,1);
    to_vector (z_i__j_ID_CC2015) ~ normal(0,1);
    to_vector (z_i__j_ID_CC2016) ~ normal(0,1);
    to_vector (z_i__j_ID_CC2017) ~ normal(0,1);
    to_vector (z_i__j_ID_CC2018) ~ normal(0,1);
    to_vector (z_i__j_ID_DD2007) ~ normal(0,1);
    to_vector (z_i__j_ID_DD2008) ~ normal(0,1);
    to_vector (z_i__j_ID_DD2009) ~ normal(0,1);
    to_vector (z_i__j_ID_DD2010) ~ normal(0,1);
    to_vector (z_i__j_ID_DD2011) ~ normal(0,1);
    to_vector (z_i__j_ID_DD2012) ~ normal(0,1);
    to_vector (z_i__j_ID_DD2013) ~ normal(0,1);
    to_vector (z_i__j_ID_EE2012) ~ normal(0,1);
    to_vector (z_i__j_ID_EE2013) ~ normal(0,1);
    to_vector (z_i__j_ID_EE2014) ~ normal(0,1);
    to_vector (z_i__j_ID_EE2015) ~ normal(0,1);
    to_vector (z_i__j_ID_EE2016) ~ normal(0,1);
    to_vector (z_i__j_ID_EE2017) ~ normal(0,1);
    to_vector (z_i__j_ID_EE2018) ~ normal(0,1);
    to_vector (z_i__j_ID_GG2002) ~ normal(0,1);
    to_vector (z_i__j_ID_GG2003) ~ normal(0,1);
    to_vector (z_i__j_ID_GG2004) ~ normal(0,1);
    to_vector (z_i__j_ID_GG2005) ~ normal(0,1);
    to_vector (z_i__j_ID_GG2006) ~ normal(0,1);
    to_vector (z_i__j_ID_GG2007) ~ normal(0,1);
    to_vector (z_i__j_ID_GG2008) ~ normal(0,1);
    to_vector (z_i__j_ID_GG2009) ~ normal(0,1);
    to_vector (z_i__j_ID_GG2010) ~ normal(0,1);
    to_vector (z_i__j_ID_GG2011) ~ normal(0,1);
    to_vector (z_i__j_ID_GG2012) ~ normal(0,1);
    to_vector (z_i__j_ID_GG2013) ~ normal(0,1);
    to_vector (z_i__j_ID_GG2014) ~ normal(0,1);
    to_vector (z_i__j_ID_GG2015) ~ normal(0,1);
    to_vector (z_i__j_ID_GG2016) ~ normal(0,1);
    to_vector (z_i__j_ID_GG2017) ~ normal(0,1);
    to_vector (z_i__j_ID_GG2018) ~ normal(0,1);
    to_vector (z_i__j_ID_HH2003) ~ normal(0,1);
    to_vector (z_i__j_ID_HH2004) ~ normal(0,1);
    to_vector (z_i__j_ID_HH2005) ~ normal(0,1);
    to_vector (z_i__j_ID_HH2006) ~ normal(0,1);
    to_vector (z_i__j_ID_HH2007) ~ normal(0,1);
    to_vector (z_i__j_ID_HH2008) ~ normal(0,1);
    to_vector (z_i__j_ID_HH2009) ~ normal(0,1);
    to_vector (z_i__j_ID_HH2010) ~ normal(0,1);
    to_vector (z_i__j_ID_HH2011) ~ normal(0,1);
    to_vector (z_i__j_ID_HH2012) ~ normal(0,1);
    to_vector (z_i__j_ID_HH2013) ~ normal(0,1);
    to_vector (z_i__j_ID_HH2014) ~ normal(0,1);
    to_vector (z_i__j_ID_HH2015) ~ normal(0,1);
    to_vector (z_i__j_ID_HH2016) ~ normal(0,1);
    to_vector (z_i__j_ID_HH2017) ~ normal(0,1);
    to_vector (z_i__j_ID_HH2018) ~ normal(0,1);
    to_vector (z_i__j_ID_KK2004) ~ normal(0,1);
    to_vector (z_i__j_ID_KK2005) ~ normal(0,1);
    to_vector (z_i__j_ID_KK2006) ~ normal(0,1);
    to_vector (z_i__j_ID_KK2007) ~ normal(0,1);
    to_vector (z_i__j_ID_KK2008) ~ normal(0,1);
    to_vector (z_i__j_ID_KK2009) ~ normal(0,1);
    to_vector (z_i__j_ID_KK2010) ~ normal(0,1);
    to_vector (z_i__j_ID_KK2011) ~ normal(0,1);
    to_vector (z_i__j_ID_KK2012) ~ normal(0,1);
    to_vector (z_i__j_ID_KK2013) ~ normal(0,1);
    to_vector (z_i__j_ID_KK2014) ~ normal(0,1);
    to_vector (z_i__j_ID_KK2015) ~ normal(0,1);
    to_vector (z_i__j_ID_KK2016) ~ normal(0,1);
    to_vector (z_i__j_ID_KK2017) ~ normal(0,1);
    to_vector (z_i__j_ID_KK2018) ~ normal(0,1);
    to_vector (z_i__j_ID_NN2008) ~ normal(0,1);
    to_vector (z_i__j_ID_NN2009) ~ normal(0,1);
    to_vector (z_i__j_ID_NN2010) ~ normal(0,1);
    to_vector (z_i__j_ID_NN2011) ~ normal(0,1);
    to_vector (z_i__j_ID_NN2012) ~ normal(0,1);
    to_vector (z_i__j_ID_NN2013) ~ normal(0,1);
    to_vector (z_i__j_ID_NN2014) ~ normal(0,1);
    to_vector (z_i__j_ID_NN2015) ~ normal(0,1);
    to_vector (z_i__j_ID_NN2016) ~ normal(0,1);
    to_vector (z_i__j_ID_NN2017) ~ normal(0,1);
    to_vector (z_i__j_ID_NN2018) ~ normal(0,1);
    to_vector (z_i__j_ID_SS2007) ~ normal(0,1);
    to_vector (z_i__j_ID_SS2008) ~ normal(0,1);
    to_vector (z_i__j_ID_SS2009) ~ normal(0,1);
    to_vector (z_i__j_ID_SS2010) ~ normal(0,1);
    to_vector (z_i__j_ID_SS2011) ~ normal(0,1);
    to_vector (z_i__j_ID_SS2012) ~ normal(0,1);
    to_vector (z_i__j_ID_SS2013) ~ normal(0,1);
    to_vector (z_i__j_ID_SS2014) ~ normal(0,1);
    to_vector (z_i__j_ID_SS2015) ~ normal(0,1);
    to_vector (z_i__j_ID_SS2016) ~ normal(0,1);
    to_vector (z_i__j_ID_SS2017) ~ normal(0,1);
    to_vector (z_i__j_ID_SS2018) ~ normal(0,1);
    to_vector (z_i__j_ID_VV2002) ~ normal(0,1);
    to_vector (z_i__j_ID_VV2003) ~ normal(0,1);
    to_vector (z_i__j_ID_VV2004) ~ normal(0,1);
    to_vector (z_i__j_ID_VV2005) ~ normal(0,1);
    to_vector (z_i__j_ID_VV2006) ~ normal(0,1);
    to_vector (z_i__j_ID_VV2007) ~ normal(0,1);
    to_vector (z_i__j_ID_VV2008) ~ normal(0,1);
    to_vector (z_i__j_ID_VV2009) ~ normal(0,1);
    to_vector (z_i__j_ID_VV2010) ~ normal(0,1);
    to_vector (z_i__j_ID_VV2011) ~ normal(0,1);
    to_vector (z_i__j_ID_VV2012) ~ normal(0,1);
    to_vector (z_i__j_ID_VV2013) ~ normal(0,1);
    to_vector (z_i__j_ID_VV2014) ~ normal(0,1);
    to_vector (z_i__j_ID_VV2015) ~ normal(0,1);
    to_vector (z_i__j_ID_VV2016) ~ normal(0,1);
    to_vector (z_i__j_ID_VV2017) ~ normal(0,1);
    to_vector (z_i__j_ID_VV2018) ~ normal(0,1);
    to_vector (z_i__j_ID_ZZ2003) ~ normal(0,1);
    to_vector (z_i__j_ID_ZZ2005) ~ normal(0,1);
    to_vector (z_i__j_ID_ZZ2006) ~ normal(0,1);
    to_vector (z_i__j_ID_ZZ2008) ~ normal(0,1);
    to_vector (z_i__j_ID_ZZ2009) ~ normal(0,1);
    to_vector (z_i__j_ID_ZZ2010) ~ normal(0,1);
    to_vector (z_i__j_ID_ZZ2011) ~ normal(0,1);
    to_vector (z_i__j_ID_ZZ2012) ~ normal(0,1);
    to_vector (z_i__j_ID_ZZ2013) ~ normal(0,1);
    to_vector (z_i__j_ID_ZZ2014) ~ normal(0,1);
    to_vector (z_i__j_ID_ZZ2015) ~ normal(0,1);
    to_vector (z_i__j_ID_ZZ2016) ~ normal(0,1);
    to_vector (z_i__j_ID_ZZ2017) ~ normal(0,1);
    to_vector (z_i__j_ID_ZZ2018) ~ normal(0,1);
    to_vector (z_i__j_ID_BB2019) ~ normal(0,1);
    to_vector (z_i__j_ID_CC2019) ~ normal(0,1);
    to_vector (z_i__j_ID_EE2019) ~ normal(0,1);
    to_vector (z_i__j_ID_GG2019) ~ normal(0,1);
    to_vector (z_i__j_ID_HH2019) ~ normal(0,1);
    to_vector (z_i__j_ID_KK2019) ~ normal(0,1);
    to_vector (z_i__j_ID_SS2019) ~ normal(0,1);
    to_vector (z_i__j_ID_VV2019) ~ normal(0,1);
    to_vector (z_i__j_ID_ZZ2019) ~ normal(0,1);
    
    // Symmetric dyad effects
    v_ij_ID_BB2002 ~ normal(0,1);
    v_ij_ID_BB2003 ~ normal(0,1);
    v_ij_ID_BB2004 ~ normal(0,1);
    v_ij_ID_BB2005 ~ normal(0,1);
    v_ij_ID_BB2006 ~ normal(0,1);
    v_ij_ID_BB2007 ~ normal(0,1);
    v_ij_ID_BB2008 ~ normal(0,1);
    v_ij_ID_BB2009 ~ normal(0,1);
    v_ij_ID_BB2010 ~ normal(0,1);
    v_ij_ID_BB2011 ~ normal(0,1);
    v_ij_ID_BB2012 ~ normal(0,1);
    v_ij_ID_BB2013 ~ normal(0,1);
    v_ij_ID_BB2014 ~ normal(0,1);
    v_ij_ID_BB2015 ~ normal(0,1);
    v_ij_ID_BB2016 ~ normal(0,1);
    v_ij_ID_BB2017 ~ normal(0,1);
    v_ij_ID_BB2018 ~ normal(0,1);
    v_ij_ID_CC2012 ~ normal(0,1);
    v_ij_ID_CC2013 ~ normal(0,1);
    v_ij_ID_CC2014 ~ normal(0,1);
    v_ij_ID_CC2015 ~ normal(0,1);
    v_ij_ID_CC2016 ~ normal(0,1);
    v_ij_ID_CC2017 ~ normal(0,1);
    v_ij_ID_CC2018 ~ normal(0,1);
    v_ij_ID_DD2007 ~ normal(0,1);
    v_ij_ID_DD2008 ~ normal(0,1);
    v_ij_ID_DD2009 ~ normal(0,1);
    v_ij_ID_DD2010 ~ normal(0,1);
    v_ij_ID_DD2011 ~ normal(0,1);
    v_ij_ID_DD2012 ~ normal(0,1);
    v_ij_ID_DD2013 ~ normal(0,1);
    v_ij_ID_EE2012 ~ normal(0,1);
    v_ij_ID_EE2013 ~ normal(0,1);
    v_ij_ID_EE2014 ~ normal(0,1);
    v_ij_ID_EE2015 ~ normal(0,1);
    v_ij_ID_EE2016 ~ normal(0,1);
    v_ij_ID_EE2017 ~ normal(0,1);
    v_ij_ID_EE2018 ~ normal(0,1);
    v_ij_ID_GG2002 ~ normal(0,1);
    v_ij_ID_GG2003 ~ normal(0,1);
    v_ij_ID_GG2004 ~ normal(0,1);
    v_ij_ID_GG2005 ~ normal(0,1);
    v_ij_ID_GG2006 ~ normal(0,1);
    v_ij_ID_GG2007 ~ normal(0,1);
    v_ij_ID_GG2008 ~ normal(0,1);
    v_ij_ID_GG2009 ~ normal(0,1);
    v_ij_ID_GG2010 ~ normal(0,1);
    v_ij_ID_GG2011 ~ normal(0,1);
    v_ij_ID_GG2012 ~ normal(0,1);
    v_ij_ID_GG2013 ~ normal(0,1);
    v_ij_ID_GG2014 ~ normal(0,1);
    v_ij_ID_GG2015 ~ normal(0,1);
    v_ij_ID_GG2016 ~ normal(0,1);
    v_ij_ID_GG2017 ~ normal(0,1);
    v_ij_ID_GG2018 ~ normal(0,1);
    v_ij_ID_HH2003 ~ normal(0,1);
    v_ij_ID_HH2004 ~ normal(0,1);
    v_ij_ID_HH2005 ~ normal(0,1);
    v_ij_ID_HH2006 ~ normal(0,1);
    v_ij_ID_HH2007 ~ normal(0,1);
    v_ij_ID_HH2008 ~ normal(0,1);
    v_ij_ID_HH2009 ~ normal(0,1);
    v_ij_ID_HH2010 ~ normal(0,1);
    v_ij_ID_HH2011 ~ normal(0,1);
    v_ij_ID_HH2012 ~ normal(0,1);
    v_ij_ID_HH2013 ~ normal(0,1);
    v_ij_ID_HH2014 ~ normal(0,1);
    v_ij_ID_HH2015 ~ normal(0,1);
    v_ij_ID_HH2016 ~ normal(0,1);
    v_ij_ID_HH2017 ~ normal(0,1);
    v_ij_ID_HH2018 ~ normal(0,1);
    v_ij_ID_KK2004 ~ normal(0,1);
    v_ij_ID_KK2005 ~ normal(0,1);
    v_ij_ID_KK2006 ~ normal(0,1);
    v_ij_ID_KK2007 ~ normal(0,1);
    v_ij_ID_KK2008 ~ normal(0,1);
    v_ij_ID_KK2009 ~ normal(0,1);
    v_ij_ID_KK2010 ~ normal(0,1);
    v_ij_ID_KK2011 ~ normal(0,1);
    v_ij_ID_KK2012 ~ normal(0,1);
    v_ij_ID_KK2013 ~ normal(0,1);
    v_ij_ID_KK2014 ~ normal(0,1);
    v_ij_ID_KK2015 ~ normal(0,1);
    v_ij_ID_KK2016 ~ normal(0,1);
    v_ij_ID_KK2017 ~ normal(0,1);
    v_ij_ID_KK2018 ~ normal(0,1);
    v_ij_ID_NN2008 ~ normal(0,1);
    v_ij_ID_NN2009 ~ normal(0,1);
    v_ij_ID_NN2010 ~ normal(0,1);
    v_ij_ID_NN2011 ~ normal(0,1);
    v_ij_ID_NN2012 ~ normal(0,1);
    v_ij_ID_NN2013 ~ normal(0,1);
    v_ij_ID_NN2014 ~ normal(0,1);
    v_ij_ID_NN2015 ~ normal(0,1);
    v_ij_ID_NN2016 ~ normal(0,1);
    v_ij_ID_NN2017 ~ normal(0,1);
    v_ij_ID_NN2018 ~ normal(0,1);
    v_ij_ID_SS2007 ~ normal(0,1);
    v_ij_ID_SS2008 ~ normal(0,1);
    v_ij_ID_SS2009 ~ normal(0,1);
    v_ij_ID_SS2010 ~ normal(0,1);
    v_ij_ID_SS2011 ~ normal(0,1);
    v_ij_ID_SS2012 ~ normal(0,1);
    v_ij_ID_SS2013 ~ normal(0,1);
    v_ij_ID_SS2014 ~ normal(0,1);
    v_ij_ID_SS2015 ~ normal(0,1);
    v_ij_ID_SS2016 ~ normal(0,1);
    v_ij_ID_SS2017 ~ normal(0,1);
    v_ij_ID_SS2018 ~ normal(0,1);
    v_ij_ID_VV2002 ~ normal(0,1);
    v_ij_ID_VV2003 ~ normal(0,1);
    v_ij_ID_VV2004 ~ normal(0,1);
    v_ij_ID_VV2005 ~ normal(0,1);
    v_ij_ID_VV2006 ~ normal(0,1);
    v_ij_ID_VV2007 ~ normal(0,1);
    v_ij_ID_VV2008 ~ normal(0,1);
    v_ij_ID_VV2009 ~ normal(0,1);
    v_ij_ID_VV2010 ~ normal(0,1);
    v_ij_ID_VV2011 ~ normal(0,1);
    v_ij_ID_VV2012 ~ normal(0,1);
    v_ij_ID_VV2013 ~ normal(0,1);
    v_ij_ID_VV2014 ~ normal(0,1);
    v_ij_ID_VV2015 ~ normal(0,1);
    v_ij_ID_VV2016 ~ normal(0,1);
    v_ij_ID_VV2017 ~ normal(0,1);
    v_ij_ID_VV2018 ~ normal(0,1);
    v_ij_ID_ZZ2003 ~ normal(0,1);
    v_ij_ID_ZZ2005 ~ normal(0,1);
    v_ij_ID_ZZ2006 ~ normal(0,1);
    v_ij_ID_ZZ2008 ~ normal(0,1);
    v_ij_ID_ZZ2009 ~ normal(0,1);
    v_ij_ID_ZZ2010 ~ normal(0,1);
    v_ij_ID_ZZ2011 ~ normal(0,1);
    v_ij_ID_ZZ2012 ~ normal(0,1);
    v_ij_ID_ZZ2013 ~ normal(0,1);
    v_ij_ID_ZZ2014 ~ normal(0,1);
    v_ij_ID_ZZ2015 ~ normal(0,1);
    v_ij_ID_ZZ2016 ~ normal(0,1);
    v_ij_ID_ZZ2017 ~ normal(0,1);
    v_ij_ID_ZZ2018 ~ normal(0,1);
    v_ij_ID_BB2019 ~ normal(0,1);  
    v_ij_ID_CC2019 ~ normal(0,1);  
    v_ij_ID_EE2019 ~ normal(0,1);  
    v_ij_ID_GG2019 ~ normal(0,1);  
    v_ij_ID_HH2019 ~ normal(0,1);  
    v_ij_ID_KK2019 ~ normal(0,1);  
    v_ij_ID_SS2019 ~ normal(0,1);  
    v_ij_ID_VV2019 ~ normal(0,1);  
    v_ij_ID_ZZ2019 ~ normal(0,1);  
    
    // Asymmetric dyad effects
    v_i2j_ID_BB2002 ~ normal(0,1);
    v_i2j_ID_BB2003 ~ normal(0,1);
    v_i2j_ID_BB2004 ~ normal(0,1);
    v_i2j_ID_BB2005 ~ normal(0,1);
    v_i2j_ID_BB2006 ~ normal(0,1);
    v_i2j_ID_BB2007 ~ normal(0,1);
    v_i2j_ID_BB2008 ~ normal(0,1);
    v_i2j_ID_BB2009 ~ normal(0,1);
    v_i2j_ID_BB2010 ~ normal(0,1);
    v_i2j_ID_BB2011 ~ normal(0,1);
    v_i2j_ID_BB2012 ~ normal(0,1);
    v_i2j_ID_BB2013 ~ normal(0,1);
    v_i2j_ID_BB2014 ~ normal(0,1);
    v_i2j_ID_BB2015 ~ normal(0,1);
    v_i2j_ID_BB2016 ~ normal(0,1);
    v_i2j_ID_BB2017 ~ normal(0,1);
    v_i2j_ID_BB2018 ~ normal(0,1);
    v_i2j_ID_CC2012 ~ normal(0,1);
    v_i2j_ID_CC2013 ~ normal(0,1);
    v_i2j_ID_CC2014 ~ normal(0,1);
    v_i2j_ID_CC2015 ~ normal(0,1);
    v_i2j_ID_CC2016 ~ normal(0,1);
    v_i2j_ID_CC2017 ~ normal(0,1);
    v_i2j_ID_CC2018 ~ normal(0,1);
    v_i2j_ID_DD2007 ~ normal(0,1);
    v_i2j_ID_DD2008 ~ normal(0,1);
    v_i2j_ID_DD2009 ~ normal(0,1);
    v_i2j_ID_DD2010 ~ normal(0,1);
    v_i2j_ID_DD2011 ~ normal(0,1);
    v_i2j_ID_DD2012 ~ normal(0,1);
    v_i2j_ID_DD2013 ~ normal(0,1);
    v_i2j_ID_EE2012 ~ normal(0,1);
    v_i2j_ID_EE2013 ~ normal(0,1);
    v_i2j_ID_EE2014 ~ normal(0,1);
    v_i2j_ID_EE2015 ~ normal(0,1);
    v_i2j_ID_EE2016 ~ normal(0,1);
    v_i2j_ID_EE2017 ~ normal(0,1);
    v_i2j_ID_EE2018 ~ normal(0,1);
    v_i2j_ID_GG2002 ~ normal(0,1);
    v_i2j_ID_GG2003 ~ normal(0,1);
    v_i2j_ID_GG2004 ~ normal(0,1);
    v_i2j_ID_GG2005 ~ normal(0,1);
    v_i2j_ID_GG2006 ~ normal(0,1);
    v_i2j_ID_GG2007 ~ normal(0,1);
    v_i2j_ID_GG2008 ~ normal(0,1);
    v_i2j_ID_GG2009 ~ normal(0,1);
    v_i2j_ID_GG2010 ~ normal(0,1);
    v_i2j_ID_GG2011 ~ normal(0,1);
    v_i2j_ID_GG2012 ~ normal(0,1);
    v_i2j_ID_GG2013 ~ normal(0,1);
    v_i2j_ID_GG2014 ~ normal(0,1);
    v_i2j_ID_GG2015 ~ normal(0,1);
    v_i2j_ID_GG2016 ~ normal(0,1);
    v_i2j_ID_GG2017 ~ normal(0,1);
    v_i2j_ID_GG2018 ~ normal(0,1);
    v_i2j_ID_HH2003 ~ normal(0,1);
    v_i2j_ID_HH2004 ~ normal(0,1);
    v_i2j_ID_HH2005 ~ normal(0,1);
    v_i2j_ID_HH2006 ~ normal(0,1);
    v_i2j_ID_HH2007 ~ normal(0,1);
    v_i2j_ID_HH2008 ~ normal(0,1);
    v_i2j_ID_HH2009 ~ normal(0,1);
    v_i2j_ID_HH2010 ~ normal(0,1);
    v_i2j_ID_HH2011 ~ normal(0,1);
    v_i2j_ID_HH2012 ~ normal(0,1);
    v_i2j_ID_HH2013 ~ normal(0,1);
    v_i2j_ID_HH2014 ~ normal(0,1);
    v_i2j_ID_HH2015 ~ normal(0,1);
    v_i2j_ID_HH2016 ~ normal(0,1);
    v_i2j_ID_HH2017 ~ normal(0,1);
    v_i2j_ID_HH2018 ~ normal(0,1);
    v_i2j_ID_KK2004 ~ normal(0,1);
    v_i2j_ID_KK2005 ~ normal(0,1);
    v_i2j_ID_KK2006 ~ normal(0,1);
    v_i2j_ID_KK2007 ~ normal(0,1);
    v_i2j_ID_KK2008 ~ normal(0,1);
    v_i2j_ID_KK2009 ~ normal(0,1);
    v_i2j_ID_KK2010 ~ normal(0,1);
    v_i2j_ID_KK2011 ~ normal(0,1);
    v_i2j_ID_KK2012 ~ normal(0,1);
    v_i2j_ID_KK2013 ~ normal(0,1);
    v_i2j_ID_KK2014 ~ normal(0,1);
    v_i2j_ID_KK2015 ~ normal(0,1);
    v_i2j_ID_KK2016 ~ normal(0,1);
    v_i2j_ID_KK2017 ~ normal(0,1);
    v_i2j_ID_KK2018 ~ normal(0,1);
    v_i2j_ID_NN2008 ~ normal(0,1);
    v_i2j_ID_NN2009 ~ normal(0,1);
    v_i2j_ID_NN2010 ~ normal(0,1);
    v_i2j_ID_NN2011 ~ normal(0,1);
    v_i2j_ID_NN2012 ~ normal(0,1);
    v_i2j_ID_NN2013 ~ normal(0,1);
    v_i2j_ID_NN2014 ~ normal(0,1);
    v_i2j_ID_NN2015 ~ normal(0,1);
    v_i2j_ID_NN2016 ~ normal(0,1);
    v_i2j_ID_NN2017 ~ normal(0,1);
    v_i2j_ID_NN2018 ~ normal(0,1);
    v_i2j_ID_SS2007 ~ normal(0,1);
    v_i2j_ID_SS2008 ~ normal(0,1);
    v_i2j_ID_SS2009 ~ normal(0,1);
    v_i2j_ID_SS2010 ~ normal(0,1);
    v_i2j_ID_SS2011 ~ normal(0,1);
    v_i2j_ID_SS2012 ~ normal(0,1);
    v_i2j_ID_SS2013 ~ normal(0,1);
    v_i2j_ID_SS2014 ~ normal(0,1);
    v_i2j_ID_SS2015 ~ normal(0,1);
    v_i2j_ID_SS2016 ~ normal(0,1);
    v_i2j_ID_SS2017 ~ normal(0,1);
    v_i2j_ID_SS2018 ~ normal(0,1);
    v_i2j_ID_VV2002 ~ normal(0,1);
    v_i2j_ID_VV2003 ~ normal(0,1);
    v_i2j_ID_VV2004 ~ normal(0,1);
    v_i2j_ID_VV2005 ~ normal(0,1);
    v_i2j_ID_VV2006 ~ normal(0,1);
    v_i2j_ID_VV2007 ~ normal(0,1);
    v_i2j_ID_VV2008 ~ normal(0,1);
    v_i2j_ID_VV2009 ~ normal(0,1);
    v_i2j_ID_VV2010 ~ normal(0,1);
    v_i2j_ID_VV2011 ~ normal(0,1);
    v_i2j_ID_VV2012 ~ normal(0,1);
    v_i2j_ID_VV2013 ~ normal(0,1);
    v_i2j_ID_VV2014 ~ normal(0,1);
    v_i2j_ID_VV2015 ~ normal(0,1);
    v_i2j_ID_VV2016 ~ normal(0,1);
    v_i2j_ID_VV2017 ~ normal(0,1);
    v_i2j_ID_VV2018 ~ normal(0,1);
    v_i2j_ID_ZZ2003 ~ normal(0,1);
    v_i2j_ID_ZZ2005 ~ normal(0,1);
    v_i2j_ID_ZZ2006 ~ normal(0,1);
    v_i2j_ID_ZZ2008 ~ normal(0,1);
    v_i2j_ID_ZZ2009 ~ normal(0,1);
    v_i2j_ID_ZZ2010 ~ normal(0,1);
    v_i2j_ID_ZZ2011 ~ normal(0,1);
    v_i2j_ID_ZZ2012 ~ normal(0,1);
    v_i2j_ID_ZZ2013 ~ normal(0,1);
    v_i2j_ID_ZZ2014 ~ normal(0,1);
    v_i2j_ID_ZZ2015 ~ normal(0,1);
    v_i2j_ID_ZZ2016 ~ normal(0,1);
    v_i2j_ID_ZZ2017 ~ normal(0,1);
    v_i2j_ID_ZZ2018 ~ normal(0,1);
    v_i2j_ID_BB2019 ~ normal(0,1); 
    v_i2j_ID_CC2019 ~ normal(0,1);  
    v_i2j_ID_EE2019 ~ normal(0,1);  
    v_i2j_ID_GG2019 ~ normal(0,1);  
    v_i2j_ID_HH2019 ~ normal(0,1);  
    v_i2j_ID_KK2019 ~ normal(0,1);  
    v_i2j_ID_SS2019 ~ normal(0,1);  
    v_i2j_ID_VV2019 ~ normal(0,1);  
    v_i2j_ID_ZZ2019 ~ normal(0,1);  
    
    // Sigmas and covariance
    sigma_group_ID ~ exponential(1);
    
    sigma_i__j_ID ~ exponential(1);
    L_Rho_i__j_ID ~ lkj_corr_cholesky(4);
    
    sigma_ij_ID ~ exponential (1);
    sigma_i2j_ID ~ exponential (1);

// LIKELIHOODS
	// AA 2002
    for ( i in 1:N_BB2002 ) {
        p_BB2002[i] = a // note removal of offset
        + v_group_ID [BB2002_group_ID[i]] * sigma_group_ID
       	+ v_i__j_ID_BB2002 [BB2002_i_ID[i],1] 
       	+ v_i__j_ID_BB2002 [BB2002_j_ID[i],2]
       	+ v_ij_ID_BB2002 [BB2002_ij_ID[i]] * sigma_ij_ID
       	+ v_i2j_ID_BB2002 [BB2002_i2j_ID[i]] * sigma_i2j_ID
       	;
    }
      	
      	
    // AA 2003
    for ( i in 1:N_BB2003 ) {
        p_BB2003[i] = a // note removal of offset
        + v_group_ID [BB2003_group_ID[i]] * sigma_group_ID
       	+ v_i__j_ID_BB2003 [BB2003_i_ID[i],1] 
       	+ v_i__j_ID_BB2003 [BB2003_j_ID[i],2]
       	+ v_ij_ID_BB2003 [BB2003_ij_ID[i]] * sigma_ij_ID
       	+ v_i2j_ID_BB2003 [BB2003_i2j_ID[i]] * sigma_i2j_ID
       	;
      	}
      	
    //BB2004
    for ( i in 1:N_BB2004 ) {
    p_BB2004[i] = a
    + v_group_ID [BB2004_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_BB2004[BB2004_i_ID[i],1]
    + v_i__j_ID_BB2004[BB2004_j_ID[i],2]
    + v_ij_ID_BB2004[BB2004_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_BB2004[BB2004_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //BB2005
    for ( i in 1:N_BB2005 ) {
    p_BB2005[i] = a
    + v_group_ID [BB2005_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_BB2005[BB2005_i_ID[i],1]
    + v_i__j_ID_BB2005[BB2005_j_ID[i],2]
    + v_ij_ID_BB2005[BB2005_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_BB2005[BB2005_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //BB2006
    for ( i in 1:N_BB2006 ) {
    p_BB2006[i] = a
    + v_group_ID [BB2006_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_BB2006[BB2006_i_ID[i],1]
    + v_i__j_ID_BB2006[BB2006_j_ID[i],2]
    + v_ij_ID_BB2006[BB2006_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_BB2006[BB2006_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //BB2007
    for ( i in 1:N_BB2007 ) {
    p_BB2007[i] = a
    + v_group_ID [BB2007_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_BB2007[BB2007_i_ID[i],1]
    + v_i__j_ID_BB2007[BB2007_j_ID[i],2]
    + v_ij_ID_BB2007[BB2007_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_BB2007[BB2007_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //BB2008
    for ( i in 1:N_BB2008 ) {
    p_BB2008[i] = a
    + v_group_ID [BB2008_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_BB2008[BB2008_i_ID[i],1]
    + v_i__j_ID_BB2008[BB2008_j_ID[i],2]
    + v_ij_ID_BB2008[BB2008_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_BB2008[BB2008_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //BB2009
    for ( i in 1:N_BB2009 ) {
    p_BB2009[i] = a
    + v_group_ID [BB2009_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_BB2009[BB2009_i_ID[i],1]
    + v_i__j_ID_BB2009[BB2009_j_ID[i],2]
    + v_ij_ID_BB2009[BB2009_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_BB2009[BB2009_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //BB2010
    for ( i in 1:N_BB2010 ) {
    p_BB2010[i] = a
    + v_group_ID [BB2010_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_BB2010[BB2010_i_ID[i],1]
    + v_i__j_ID_BB2010[BB2010_j_ID[i],2]
    + v_ij_ID_BB2010[BB2010_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_BB2010[BB2010_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //BB2011
    for ( i in 1:N_BB2011 ) {
    p_BB2011[i] = a
    + v_group_ID [BB2011_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_BB2011[BB2011_i_ID[i],1]
    + v_i__j_ID_BB2011[BB2011_j_ID[i],2]
    + v_ij_ID_BB2011[BB2011_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_BB2011[BB2011_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //BB2012
    for ( i in 1:N_BB2012 ) {
    p_BB2012[i] = a
    + v_group_ID [BB2012_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_BB2012[BB2012_i_ID[i],1]
    + v_i__j_ID_BB2012[BB2012_j_ID[i],2]
    + v_ij_ID_BB2012[BB2012_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_BB2012[BB2012_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //BB2013
    for ( i in 1:N_BB2013 ) {
    p_BB2013[i] = a
    + v_group_ID [BB2013_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_BB2013[BB2013_i_ID[i],1]
    + v_i__j_ID_BB2013[BB2013_j_ID[i],2]
    + v_ij_ID_BB2013[BB2013_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_BB2013[BB2013_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //BB2014
    for ( i in 1:N_BB2014 ) {
    p_BB2014[i] = a
    + v_group_ID [BB2014_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_BB2014[BB2014_i_ID[i],1]
    + v_i__j_ID_BB2014[BB2014_j_ID[i],2]
    + v_ij_ID_BB2014[BB2014_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_BB2014[BB2014_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //BB2015
    for ( i in 1:N_BB2015 ) {
    p_BB2015[i] = a
    + v_group_ID [BB2015_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_BB2015[BB2015_i_ID[i],1]
    + v_i__j_ID_BB2015[BB2015_j_ID[i],2]
    + v_ij_ID_BB2015[BB2015_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_BB2015[BB2015_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //BB2016
    for ( i in 1:N_BB2016 ) {
    p_BB2016[i] = a
    + v_group_ID [BB2016_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_BB2016[BB2016_i_ID[i],1]
    + v_i__j_ID_BB2016[BB2016_j_ID[i],2]
    + v_ij_ID_BB2016[BB2016_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_BB2016[BB2016_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //BB2017
    for ( i in 1:N_BB2017 ) {
    p_BB2017[i] = a
    + v_group_ID [BB2017_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_BB2017[BB2017_i_ID[i],1]
    + v_i__j_ID_BB2017[BB2017_j_ID[i],2]
    + v_ij_ID_BB2017[BB2017_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_BB2017[BB2017_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //BB2018
    for ( i in 1:N_BB2018 ) {
    p_BB2018[i] = a
    + v_group_ID [BB2018_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_BB2018[BB2018_i_ID[i],1]
    + v_i__j_ID_BB2018[BB2018_j_ID[i],2]
    + v_ij_ID_BB2018[BB2018_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_BB2018[BB2018_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
    
    //BB2019
    for ( i in 1:N_BB2019 ) {
      p_BB2019[i] = a
      + v_group_ID [BB2019_group_ID[i]] * sigma_group_ID
      + v_i__j_ID_BB2019[BB2019_i_ID[i],1]
      + v_i__j_ID_BB2019[BB2019_j_ID[i],2]
      + v_ij_ID_BB2019[BB2019_ij_ID[i]]*sigma_ij_ID
      + v_i2j_ID_BB2019[BB2019_i2j_ID[i]] * sigma_i2j_ID
      ;
    }
       
    //CC2012
    for ( i in 1:N_CC2012 ) {
    p_CC2012[i] = a
    + v_group_ID [CC2012_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_CC2012[CC2012_i_ID[i],1]
    + v_i__j_ID_CC2012[CC2012_j_ID[i],2]
    + v_ij_ID_CC2012[CC2012_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_CC2012[CC2012_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //CC2013
    for ( i in 1:N_CC2013 ) {
    p_CC2013[i] = a
    + v_group_ID [CC2013_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_CC2013[CC2013_i_ID[i],1]
    + v_i__j_ID_CC2013[CC2013_j_ID[i],2]
    + v_ij_ID_CC2013[CC2013_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_CC2013[CC2013_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //CC2014
    for ( i in 1:N_CC2014 ) {
    p_CC2014[i] = a
    + v_group_ID [CC2014_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_CC2014[CC2014_i_ID[i],1]
    + v_i__j_ID_CC2014[CC2014_j_ID[i],2]
    + v_ij_ID_CC2014[CC2014_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_CC2014[CC2014_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //CC2015
    for ( i in 1:N_CC2015 ) {
    p_CC2015[i] = a
    + v_group_ID [CC2015_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_CC2015[CC2015_i_ID[i],1]
    + v_i__j_ID_CC2015[CC2015_j_ID[i],2]
    + v_ij_ID_CC2015[CC2015_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_CC2015[CC2015_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //CC2016
    for ( i in 1:N_CC2016 ) {
    p_CC2016[i] = a
    + v_group_ID [CC2016_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_CC2016[CC2016_i_ID[i],1]
    + v_i__j_ID_CC2016[CC2016_j_ID[i],2]
    + v_ij_ID_CC2016[CC2016_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_CC2016[CC2016_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //CC2017
    for ( i in 1:N_CC2017 ) {
    p_CC2017[i] = a
    + v_group_ID [CC2017_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_CC2017[CC2017_i_ID[i],1]
    + v_i__j_ID_CC2017[CC2017_j_ID[i],2]
    + v_ij_ID_CC2017[CC2017_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_CC2017[CC2017_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //CC2018
    for ( i in 1:N_CC2018 ) {
    p_CC2018[i] = a
    + v_group_ID [CC2018_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_CC2018[CC2018_i_ID[i],1]
    + v_i__j_ID_CC2018[CC2018_j_ID[i],2]
    + v_ij_ID_CC2018[CC2018_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_CC2018[CC2018_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
    
    //CC2019
    for ( i in 1:N_CC2019 ) {
      p_CC2019[i] = a
      + v_group_ID [CC2019_group_ID[i]] * sigma_group_ID
      + v_i__j_ID_CC2019[CC2019_i_ID[i],1]
      + v_i__j_ID_CC2019[CC2019_j_ID[i],2]
      + v_ij_ID_CC2019[CC2019_ij_ID[i]]*sigma_ij_ID
      + v_i2j_ID_CC2019[CC2019_i2j_ID[i]] * sigma_i2j_ID
      ;
    }
       
    //DD2007
    for ( i in 1:N_DD2007 ) {
    p_DD2007[i] = a
    + v_group_ID [DD2007_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_DD2007[DD2007_i_ID[i],1]
    + v_i__j_ID_DD2007[DD2007_j_ID[i],2]
    + v_ij_ID_DD2007[DD2007_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_DD2007[DD2007_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //DD2008
    for ( i in 1:N_DD2008 ) {
    p_DD2008[i] = a
    + v_group_ID [DD2008_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_DD2008[DD2008_i_ID[i],1]
    + v_i__j_ID_DD2008[DD2008_j_ID[i],2]
    + v_ij_ID_DD2008[DD2008_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_DD2008[DD2008_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //DD2009
    for ( i in 1:N_DD2009 ) {
    p_DD2009[i] = a
    + v_group_ID [DD2009_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_DD2009[DD2009_i_ID[i],1]
    + v_i__j_ID_DD2009[DD2009_j_ID[i],2]
    + v_ij_ID_DD2009[DD2009_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_DD2009[DD2009_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //DD2010
    for ( i in 1:N_DD2010 ) {
    p_DD2010[i] = a
    + v_group_ID [DD2010_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_DD2010[DD2010_i_ID[i],1]
    + v_i__j_ID_DD2010[DD2010_j_ID[i],2]
    + v_ij_ID_DD2010[DD2010_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_DD2010[DD2010_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //DD2011
    for ( i in 1:N_DD2011 ) {
    p_DD2011[i] = a
    + v_group_ID [DD2011_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_DD2011[DD2011_i_ID[i],1]
    + v_i__j_ID_DD2011[DD2011_j_ID[i],2]
    + v_ij_ID_DD2011[DD2011_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_DD2011[DD2011_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //DD2012
    for ( i in 1:N_DD2012 ) {
    p_DD2012[i] = a
    + v_group_ID [DD2012_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_DD2012[DD2012_i_ID[i],1]
    + v_i__j_ID_DD2012[DD2012_j_ID[i],2]
    + v_ij_ID_DD2012[DD2012_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_DD2012[DD2012_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
      	
      	//DD2013
    for ( i in 1:N_DD2013 ) {
    p_DD2013[i] = a
    + v_group_ID [DD2013_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_DD2013[DD2013_i_ID[i],1]
    + v_i__j_ID_DD2013[DD2013_j_ID[i],2]
    + v_ij_ID_DD2013[DD2013_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_DD2013[DD2013_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //EE2012
    for ( i in 1:N_EE2012 ) {
    p_EE2012[i] = a
    + v_group_ID [EE2012_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_EE2012[EE2012_i_ID[i],1]
    + v_i__j_ID_EE2012[EE2012_j_ID[i],2]
    + v_ij_ID_EE2012[EE2012_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_EE2012[EE2012_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //EE2013
    for ( i in 1:N_EE2013 ) {
    p_EE2013[i] = a
    + v_group_ID [EE2013_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_EE2013[EE2013_i_ID[i],1]
    + v_i__j_ID_EE2013[EE2013_j_ID[i],2]
    + v_ij_ID_EE2013[EE2013_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_EE2013[EE2013_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //EE2014
    for ( i in 1:N_EE2014 ) {
    p_EE2014[i] = a
    + v_group_ID [EE2014_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_EE2014[EE2014_i_ID[i],1]
    + v_i__j_ID_EE2014[EE2014_j_ID[i],2]
    + v_ij_ID_EE2014[EE2014_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_EE2014[EE2014_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //EE2015
    for ( i in 1:N_EE2015 ) {
    p_EE2015[i] = a
    + v_group_ID [EE2015_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_EE2015[EE2015_i_ID[i],1]
    + v_i__j_ID_EE2015[EE2015_j_ID[i],2]
    + v_ij_ID_EE2015[EE2015_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_EE2015[EE2015_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //EE2016
    for ( i in 1:N_EE2016 ) {
    p_EE2016[i] = a
    + v_group_ID [EE2016_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_EE2016[EE2016_i_ID[i],1]
    + v_i__j_ID_EE2016[EE2016_j_ID[i],2]
    + v_ij_ID_EE2016[EE2016_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_EE2016[EE2016_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //EE2017
    for ( i in 1:N_EE2017 ) {
    p_EE2017[i] = a
    + v_group_ID [EE2017_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_EE2017[EE2017_i_ID[i],1]
    + v_i__j_ID_EE2017[EE2017_j_ID[i],2]
    + v_ij_ID_EE2017[EE2017_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_EE2017[EE2017_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //EE2018
    for ( i in 1:N_EE2018 ) {
    p_EE2018[i] = a
    + v_group_ID [EE2018_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_EE2018[EE2018_i_ID[i],1]
    + v_i__j_ID_EE2018[EE2018_j_ID[i],2]
    + v_ij_ID_EE2018[EE2018_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_EE2018[EE2018_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
    
    //EE2019
    for ( i in 1:N_EE2019 ) {
      p_EE2019[i] = a
      + v_group_ID [EE2019_group_ID[i]] * sigma_group_ID
      + v_i__j_ID_EE2019[EE2019_i_ID[i],1]
      + v_i__j_ID_EE2019[EE2019_j_ID[i],2]
      + v_ij_ID_EE2019[EE2019_ij_ID[i]]*sigma_ij_ID
      + v_i2j_ID_EE2019[EE2019_i2j_ID[i]] * sigma_i2j_ID
      ;
    }
       
    //GG2002
    for ( i in 1:N_GG2002 ) {
    p_GG2002[i] = a
    + v_group_ID [GG2002_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_GG2002[GG2002_i_ID[i],1]
    + v_i__j_ID_GG2002[GG2002_j_ID[i],2]
    + v_ij_ID_GG2002[GG2002_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_GG2002[GG2002_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //GG2003
    for ( i in 1:N_GG2003 ) {
    p_GG2003[i] = a
    + v_group_ID [GG2003_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_GG2003[GG2003_i_ID[i],1]
    + v_i__j_ID_GG2003[GG2003_j_ID[i],2]
    + v_ij_ID_GG2003[GG2003_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_GG2003[GG2003_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //GG2004
    for ( i in 1:N_GG2004 ) {
    p_GG2004[i] = a
    + v_group_ID [GG2004_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_GG2004[GG2004_i_ID[i],1]
    + v_i__j_ID_GG2004[GG2004_j_ID[i],2]
    + v_ij_ID_GG2004[GG2004_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_GG2004[GG2004_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //GG2005
    for ( i in 1:N_GG2005 ) {
    p_GG2005[i] = a
    + v_group_ID [GG2005_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_GG2005[GG2005_i_ID[i],1]
    + v_i__j_ID_GG2005[GG2005_j_ID[i],2]
    + v_ij_ID_GG2005[GG2005_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_GG2005[GG2005_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //GG2006
    for ( i in 1:N_GG2006 ) {
    p_GG2006[i] = a
    + v_group_ID [GG2006_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_GG2006[GG2006_i_ID[i],1]
    + v_i__j_ID_GG2006[GG2006_j_ID[i],2]
    + v_ij_ID_GG2006[GG2006_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_GG2006[GG2006_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //GG2007
    for ( i in 1:N_GG2007 ) {
    p_GG2007[i] = a
    + v_group_ID [GG2007_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_GG2007[GG2007_i_ID[i],1]
    + v_i__j_ID_GG2007[GG2007_j_ID[i],2]
    + v_ij_ID_GG2007[GG2007_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_GG2007[GG2007_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //GG2008
    for ( i in 1:N_GG2008 ) {
    p_GG2008[i] = a
    + v_group_ID [GG2008_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_GG2008[GG2008_i_ID[i],1]
    + v_i__j_ID_GG2008[GG2008_j_ID[i],2]
    + v_ij_ID_GG2008[GG2008_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_GG2008[GG2008_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //GG2009
    for ( i in 1:N_GG2009 ) {
    p_GG2009[i] = a
    + v_group_ID [GG2009_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_GG2009[GG2009_i_ID[i],1]
    + v_i__j_ID_GG2009[GG2009_j_ID[i],2]
    + v_ij_ID_GG2009[GG2009_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_GG2009[GG2009_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //GG2010
    for ( i in 1:N_GG2010 ) {
    p_GG2010[i] = a
    + v_group_ID [GG2010_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_GG2010[GG2010_i_ID[i],1]
    + v_i__j_ID_GG2010[GG2010_j_ID[i],2]
    + v_ij_ID_GG2010[GG2010_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_GG2010[GG2010_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //GG2011
    for ( i in 1:N_GG2011 ) {
    p_GG2011[i] = a
    + v_group_ID [GG2011_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_GG2011[GG2011_i_ID[i],1]
    + v_i__j_ID_GG2011[GG2011_j_ID[i],2]
    + v_ij_ID_GG2011[GG2011_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_GG2011[GG2011_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //GG2012
    for ( i in 1:N_GG2012 ) {
    p_GG2012[i] = a
    + v_group_ID [GG2012_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_GG2012[GG2012_i_ID[i],1]
    + v_i__j_ID_GG2012[GG2012_j_ID[i],2]
    + v_ij_ID_GG2012[GG2012_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_GG2012[GG2012_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //GG2013
    for ( i in 1:N_GG2013 ) {
    p_GG2013[i] = a
    + v_group_ID [GG2013_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_GG2013[GG2013_i_ID[i],1]
    + v_i__j_ID_GG2013[GG2013_j_ID[i],2]
    + v_ij_ID_GG2013[GG2013_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_GG2013[GG2013_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //GG2014
    for ( i in 1:N_GG2014 ) {
    p_GG2014[i] = a
    + v_group_ID [GG2014_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_GG2014[GG2014_i_ID[i],1]
    + v_i__j_ID_GG2014[GG2014_j_ID[i],2]
    + v_ij_ID_GG2014[GG2014_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_GG2014[GG2014_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //GG2015
    for ( i in 1:N_GG2015 ) {
    p_GG2015[i] = a
    + v_group_ID [GG2015_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_GG2015[GG2015_i_ID[i],1]
    + v_i__j_ID_GG2015[GG2015_j_ID[i],2]
    + v_ij_ID_GG2015[GG2015_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_GG2015[GG2015_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //GG2016
    for ( i in 1:N_GG2016 ) {
    p_GG2016[i] = a
    + v_group_ID [GG2016_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_GG2016[GG2016_i_ID[i],1]
    + v_i__j_ID_GG2016[GG2016_j_ID[i],2]
    + v_ij_ID_GG2016[GG2016_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_GG2016[GG2016_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //GG2017
    for ( i in 1:N_GG2017 ) {
    p_GG2017[i] = a
    + v_group_ID [GG2017_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_GG2017[GG2017_i_ID[i],1]
    + v_i__j_ID_GG2017[GG2017_j_ID[i],2]
    + v_ij_ID_GG2017[GG2017_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_GG2017[GG2017_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //GG2018
    for ( i in 1:N_GG2018 ) {
    p_GG2018[i] = a
    + v_group_ID [GG2018_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_GG2018[GG2018_i_ID[i],1]
    + v_i__j_ID_GG2018[GG2018_j_ID[i],2]
    + v_ij_ID_GG2018[GG2018_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_GG2018[GG2018_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
    
    //GG2019
    for ( i in 1:N_GG2019 ) {
      p_GG2019[i] = a
      + v_group_ID [GG2019_group_ID[i]] * sigma_group_ID
      + v_i__j_ID_GG2019[GG2019_i_ID[i],1]
      + v_i__j_ID_GG2019[GG2019_j_ID[i],2]
      + v_ij_ID_GG2019[GG2019_ij_ID[i]]*sigma_ij_ID
      + v_i2j_ID_GG2019[GG2019_i2j_ID[i]] * sigma_i2j_ID
      ;
    }
       
    //HH2003
    for ( i in 1:N_HH2003 ) {
    p_HH2003[i] = a
    + v_group_ID [HH2003_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_HH2003[HH2003_i_ID[i],1]
    + v_i__j_ID_HH2003[HH2003_j_ID[i],2]
    + v_ij_ID_HH2003[HH2003_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_HH2003[HH2003_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //HH2004
    for ( i in 1:N_HH2004 ) {
    p_HH2004[i] = a
    + v_group_ID [HH2004_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_HH2004[HH2004_i_ID[i],1]
    + v_i__j_ID_HH2004[HH2004_j_ID[i],2]
    + v_ij_ID_HH2004[HH2004_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_HH2004[HH2004_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //HH2005
    for ( i in 1:N_HH2005 ) {
    p_HH2005[i] = a
    + v_group_ID [HH2005_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_HH2005[HH2005_i_ID[i],1]
    + v_i__j_ID_HH2005[HH2005_j_ID[i],2]
    + v_ij_ID_HH2005[HH2005_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_HH2005[HH2005_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //HH2006
    for ( i in 1:N_HH2006 ) {
    p_HH2006[i] = a
    + v_group_ID [HH2006_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_HH2006[HH2006_i_ID[i],1]
    + v_i__j_ID_HH2006[HH2006_j_ID[i],2]
    + v_ij_ID_HH2006[HH2006_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_HH2006[HH2006_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //HH2007
    for ( i in 1:N_HH2007 ) {
    p_HH2007[i] = a
    + v_group_ID [HH2007_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_HH2007[HH2007_i_ID[i],1]
    + v_i__j_ID_HH2007[HH2007_j_ID[i],2]
    + v_ij_ID_HH2007[HH2007_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_HH2007[HH2007_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
    
    //HH2008
    for ( i in 1:N_HH2008 ) {
    p_HH2008[i] = a
    + v_group_ID [HH2008_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_HH2008[HH2008_i_ID[i],1]
    + v_i__j_ID_HH2008[HH2008_j_ID[i],2]
    + v_ij_ID_HH2008[HH2008_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_HH2008[HH2008_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //HH2009
    for ( i in 1:N_HH2009 ) {
    p_HH2009[i] = a
    + v_group_ID [HH2009_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_HH2009[HH2009_i_ID[i],1]
    + v_i__j_ID_HH2009[HH2009_j_ID[i],2]
    + v_ij_ID_HH2009[HH2009_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_HH2009[HH2009_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //HH2010
    for ( i in 1:N_HH2010 ) {
    p_HH2010[i] = a
    + v_group_ID [HH2010_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_HH2010[HH2010_i_ID[i],1]
    + v_i__j_ID_HH2010[HH2010_j_ID[i],2]
    + v_ij_ID_HH2010[HH2010_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_HH2010[HH2010_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //HH2011
    for ( i in 1:N_HH2011 ) {
    p_HH2011[i] = a
    + v_group_ID [HH2011_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_HH2011[HH2011_i_ID[i],1]
    + v_i__j_ID_HH2011[HH2011_j_ID[i],2]
    + v_ij_ID_HH2011[HH2011_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_HH2011[HH2011_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //HH2012
    for ( i in 1:N_HH2012 ) {
    p_HH2012[i] = a
    + v_group_ID [HH2012_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_HH2012[HH2012_i_ID[i],1]
    + v_i__j_ID_HH2012[HH2012_j_ID[i],2]
    + v_ij_ID_HH2012[HH2012_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_HH2012[HH2012_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //HH2013
    for ( i in 1:N_HH2013 ) {
    p_HH2013[i] = a
    + v_group_ID [HH2013_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_HH2013[HH2013_i_ID[i],1]
    + v_i__j_ID_HH2013[HH2013_j_ID[i],2]
    + v_ij_ID_HH2013[HH2013_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_HH2013[HH2013_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //HH2014
    for ( i in 1:N_HH2014 ) {
    p_HH2014[i] = a
    + v_group_ID [HH2014_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_HH2014[HH2014_i_ID[i],1]
    + v_i__j_ID_HH2014[HH2014_j_ID[i],2]
    + v_ij_ID_HH2014[HH2014_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_HH2014[HH2014_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //HH2015
    for ( i in 1:N_HH2015 ) {
    p_HH2015[i] = a
    + v_group_ID [HH2015_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_HH2015[HH2015_i_ID[i],1]
    + v_i__j_ID_HH2015[HH2015_j_ID[i],2]
    + v_ij_ID_HH2015[HH2015_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_HH2015[HH2015_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //HH2016
    for ( i in 1:N_HH2016 ) {
    p_HH2016[i] = a
    + v_group_ID [HH2016_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_HH2016[HH2016_i_ID[i],1]
    + v_i__j_ID_HH2016[HH2016_j_ID[i],2]
    + v_ij_ID_HH2016[HH2016_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_HH2016[HH2016_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //HH2017
    for ( i in 1:N_HH2017 ) {
    p_HH2017[i] = a
    + v_group_ID [HH2017_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_HH2017[HH2017_i_ID[i],1]
    + v_i__j_ID_HH2017[HH2017_j_ID[i],2]
    + v_ij_ID_HH2017[HH2017_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_HH2017[HH2017_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //HH2018
    for ( i in 1:N_HH2018 ) {
    p_HH2018[i] = a
    + v_group_ID [HH2018_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_HH2018[HH2018_i_ID[i],1]
    + v_i__j_ID_HH2018[HH2018_j_ID[i],2]
    + v_ij_ID_HH2018[HH2018_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_HH2018[HH2018_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
    
    //HH2019
    for ( i in 1:N_HH2019 ) {
      p_HH2019[i] = a
      + v_group_ID [HH2019_group_ID[i]] * sigma_group_ID
      + v_i__j_ID_HH2019[HH2019_i_ID[i],1]
      + v_i__j_ID_HH2019[HH2019_j_ID[i],2]
      + v_ij_ID_HH2019[HH2019_ij_ID[i]]*sigma_ij_ID
      + v_i2j_ID_HH2019[HH2019_i2j_ID[i]] * sigma_i2j_ID
      ;
    }
       
    //KK2004
    for ( i in 1:N_KK2004 ) {
    p_KK2004[i] = a
    + v_group_ID [KK2004_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_KK2004[KK2004_i_ID[i],1]
    + v_i__j_ID_KK2004[KK2004_j_ID[i],2]
    + v_ij_ID_KK2004[KK2004_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_KK2004[KK2004_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //KK2005
    for ( i in 1:N_KK2005 ) {
    p_KK2005[i] = a
    + v_group_ID [KK2005_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_KK2005[KK2005_i_ID[i],1]
    + v_i__j_ID_KK2005[KK2005_j_ID[i],2]
    + v_ij_ID_KK2005[KK2005_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_KK2005[KK2005_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //KK2006
    for ( i in 1:N_KK2006 ) {
    p_KK2006[i] = a
    + v_group_ID [KK2006_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_KK2006[KK2006_i_ID[i],1]
    + v_i__j_ID_KK2006[KK2006_j_ID[i],2]
    + v_ij_ID_KK2006[KK2006_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_KK2006[KK2006_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //KK2007
    for ( i in 1:N_KK2007 ) {
    p_KK2007[i] = a
    + v_group_ID [KK2007_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_KK2007[KK2007_i_ID[i],1]
    + v_i__j_ID_KK2007[KK2007_j_ID[i],2]
    + v_ij_ID_KK2007[KK2007_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_KK2007[KK2007_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //KK2008
    for ( i in 1:N_KK2008 ) {
    p_KK2008[i] = a
    + v_group_ID [KK2008_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_KK2008[KK2008_i_ID[i],1]
    + v_i__j_ID_KK2008[KK2008_j_ID[i],2]
    + v_ij_ID_KK2008[KK2008_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_KK2008[KK2008_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //KK2009
    for ( i in 1:N_KK2009 ) {
    p_KK2009[i] = a
    + v_group_ID [KK2009_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_KK2009[KK2009_i_ID[i],1]
    + v_i__j_ID_KK2009[KK2009_j_ID[i],2]
    + v_ij_ID_KK2009[KK2009_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_KK2009[KK2009_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //KK2010
    for ( i in 1:N_KK2010 ) {
    p_KK2010[i] = a
    + v_group_ID [KK2010_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_KK2010[KK2010_i_ID[i],1]
    + v_i__j_ID_KK2010[KK2010_j_ID[i],2]
    + v_ij_ID_KK2010[KK2010_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_KK2010[KK2010_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //KK2011
    for ( i in 1:N_KK2011 ) {
    p_KK2011[i] = a
    + v_group_ID [KK2011_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_KK2011[KK2011_i_ID[i],1]
    + v_i__j_ID_KK2011[KK2011_j_ID[i],2]
    + v_ij_ID_KK2011[KK2011_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_KK2011[KK2011_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //KK2012
    for ( i in 1:N_KK2012 ) {
    p_KK2012[i] = a
    + v_group_ID [KK2012_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_KK2012[KK2012_i_ID[i],1]
    + v_i__j_ID_KK2012[KK2012_j_ID[i],2]
    + v_ij_ID_KK2012[KK2012_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_KK2012[KK2012_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //KK2013
    for ( i in 1:N_KK2013 ) {
    p_KK2013[i] = a
    + v_group_ID [KK2013_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_KK2013[KK2013_i_ID[i],1]
    + v_i__j_ID_KK2013[KK2013_j_ID[i],2]
    + v_ij_ID_KK2013[KK2013_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_KK2013[KK2013_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //KK2014
    for ( i in 1:N_KK2014 ) {
    p_KK2014[i] = a
    + v_group_ID [KK2014_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_KK2014[KK2014_i_ID[i],1]
    + v_i__j_ID_KK2014[KK2014_j_ID[i],2]
    + v_ij_ID_KK2014[KK2014_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_KK2014[KK2014_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //KK2015
    for ( i in 1:N_KK2015 ) {
    p_KK2015[i] = a
    + v_group_ID [KK2015_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_KK2015[KK2015_i_ID[i],1]
    + v_i__j_ID_KK2015[KK2015_j_ID[i],2]
    + v_ij_ID_KK2015[KK2015_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_KK2015[KK2015_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //KK2016
    for ( i in 1:N_KK2016 ) {
    p_KK2016[i] = a
    + v_group_ID [KK2016_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_KK2016[KK2016_i_ID[i],1]
    + v_i__j_ID_KK2016[KK2016_j_ID[i],2]
    + v_ij_ID_KK2016[KK2016_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_KK2016[KK2016_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //KK2017
    for ( i in 1:N_KK2017 ) {
    p_KK2017[i] = a
    + v_group_ID [KK2017_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_KK2017[KK2017_i_ID[i],1]
    + v_i__j_ID_KK2017[KK2017_j_ID[i],2]
    + v_ij_ID_KK2017[KK2017_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_KK2017[KK2017_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //KK2018
    for ( i in 1:N_KK2018 ) {
    p_KK2018[i] = a
    + v_group_ID [KK2018_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_KK2018[KK2018_i_ID[i],1]
    + v_i__j_ID_KK2018[KK2018_j_ID[i],2]
    + v_ij_ID_KK2018[KK2018_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_KK2018[KK2018_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
    
    //KK2019
    for ( i in 1:N_KK2019 ) {
      p_KK2019[i] = a
      + v_group_ID [KK2019_group_ID[i]] * sigma_group_ID
      + v_i__j_ID_KK2019[KK2019_i_ID[i],1]
      + v_i__j_ID_KK2019[KK2019_j_ID[i],2]
      + v_ij_ID_KK2019[KK2019_ij_ID[i]]*sigma_ij_ID
      + v_i2j_ID_KK2019[KK2019_i2j_ID[i]] * sigma_i2j_ID
      ;
    }
           
    //NN2008
    for ( i in 1:N_NN2008 ) {
    p_NN2008[i] = a
    + v_group_ID [NN2008_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_NN2008[NN2008_i_ID[i],1]
    + v_i__j_ID_NN2008[NN2008_j_ID[i],2]
    + v_ij_ID_NN2008[NN2008_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_NN2008[NN2008_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //NN2009
    for ( i in 1:N_NN2009 ) {
    p_NN2009[i] = a
    + v_group_ID [NN2009_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_NN2009[NN2009_i_ID[i],1]
    + v_i__j_ID_NN2009[NN2009_j_ID[i],2]
    + v_ij_ID_NN2009[NN2009_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_NN2009[NN2009_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //NN2010
    for ( i in 1:N_NN2010 ) {
    p_NN2010[i] = a
    + v_group_ID [NN2010_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_NN2010[NN2010_i_ID[i],1]
    + v_i__j_ID_NN2010[NN2010_j_ID[i],2]
    + v_ij_ID_NN2010[NN2010_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_NN2010[NN2010_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //NN2011
    for ( i in 1:N_NN2011 ) {
    p_NN2011[i] = a
    + v_group_ID [NN2011_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_NN2011[NN2011_i_ID[i],1]
    + v_i__j_ID_NN2011[NN2011_j_ID[i],2]
    + v_ij_ID_NN2011[NN2011_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_NN2011[NN2011_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //NN2012
    for ( i in 1:N_NN2012 ) {
    p_NN2012[i] = a
    + v_group_ID [NN2012_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_NN2012[NN2012_i_ID[i],1]
    + v_i__j_ID_NN2012[NN2012_j_ID[i],2]
    + v_ij_ID_NN2012[NN2012_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_NN2012[NN2012_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //NN2013
    for ( i in 1:N_NN2013 ) {
    p_NN2013[i] = a
    + v_group_ID [NN2013_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_NN2013[NN2013_i_ID[i],1]
    + v_i__j_ID_NN2013[NN2013_j_ID[i],2]
    + v_ij_ID_NN2013[NN2013_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_NN2013[NN2013_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //NN2014
    for ( i in 1:N_NN2014 ) {
    p_NN2014[i] = a
    + v_group_ID [NN2014_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_NN2014[NN2014_i_ID[i],1]
    + v_i__j_ID_NN2014[NN2014_j_ID[i],2]
    + v_ij_ID_NN2014[NN2014_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_NN2014[NN2014_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //NN2015
    for ( i in 1:N_NN2015 ) {
    p_NN2015[i] = a
    + v_group_ID [NN2015_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_NN2015[NN2015_i_ID[i],1]
    + v_i__j_ID_NN2015[NN2015_j_ID[i],2]
    + v_ij_ID_NN2015[NN2015_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_NN2015[NN2015_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //NN2016
    for ( i in 1:N_NN2016 ) {
    p_NN2016[i] = a
    + v_group_ID [NN2016_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_NN2016[NN2016_i_ID[i],1]
    + v_i__j_ID_NN2016[NN2016_j_ID[i],2]
    + v_ij_ID_NN2016[NN2016_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_NN2016[NN2016_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //NN2017
    for ( i in 1:N_NN2017 ) {
    p_NN2017[i] = a
    + v_group_ID [NN2017_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_NN2017[NN2017_i_ID[i],1]
    + v_i__j_ID_NN2017[NN2017_j_ID[i],2]
    + v_ij_ID_NN2017[NN2017_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_NN2017[NN2017_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //NN2018
    for ( i in 1:N_NN2018 ) {
    p_NN2018[i] = a
    + v_group_ID [NN2018_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_NN2018[NN2018_i_ID[i],1]
    + v_i__j_ID_NN2018[NN2018_j_ID[i],2]
    + v_ij_ID_NN2018[NN2018_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_NN2018[NN2018_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //SS2007
    for ( i in 1:N_SS2007 ) {
    p_SS2007[i] = a
    + v_group_ID [SS2007_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_SS2007[SS2007_i_ID[i],1]
    + v_i__j_ID_SS2007[SS2007_j_ID[i],2]
    + v_ij_ID_SS2007[SS2007_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_SS2007[SS2007_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //SS2008
    for ( i in 1:N_SS2008 ) {
    p_SS2008[i] = a
    + v_group_ID [SS2008_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_SS2008[SS2008_i_ID[i],1]
    + v_i__j_ID_SS2008[SS2008_j_ID[i],2]
    + v_ij_ID_SS2008[SS2008_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_SS2008[SS2008_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //SS2009
    for ( i in 1:N_SS2009 ) {
    p_SS2009[i] = a
    + v_group_ID [SS2009_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_SS2009[SS2009_i_ID[i],1]
    + v_i__j_ID_SS2009[SS2009_j_ID[i],2]
    + v_ij_ID_SS2009[SS2009_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_SS2009[SS2009_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
    
    
    //SS2010
    for ( i in 1:N_SS2010 ) {
    p_SS2010[i] = a
    + v_group_ID [SS2010_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_SS2010[SS2010_i_ID[i],1]
    + v_i__j_ID_SS2010[SS2010_j_ID[i],2]
    + v_ij_ID_SS2010[SS2010_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_SS2010[SS2010_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //SS2011
    for ( i in 1:N_SS2011 ) {
    p_SS2011[i] = a
    + v_group_ID [SS2011_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_SS2011[SS2011_i_ID[i],1]
    + v_i__j_ID_SS2011[SS2011_j_ID[i],2]
    + v_ij_ID_SS2011[SS2011_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_SS2011[SS2011_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //SS2012
    for ( i in 1:N_SS2012 ) {
    p_SS2012[i] = a
    + v_group_ID [SS2012_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_SS2012[SS2012_i_ID[i],1]
    + v_i__j_ID_SS2012[SS2012_j_ID[i],2]
    + v_ij_ID_SS2012[SS2012_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_SS2012[SS2012_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //SS2013
    for ( i in 1:N_SS2013 ) {
    p_SS2013[i] = a
    + v_group_ID [SS2013_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_SS2013[SS2013_i_ID[i],1]
    + v_i__j_ID_SS2013[SS2013_j_ID[i],2]
    + v_ij_ID_SS2013[SS2013_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_SS2013[SS2013_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //SS2014
    for ( i in 1:N_SS2014 ) {
    p_SS2014[i] = a
    + v_group_ID [SS2014_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_SS2014[SS2014_i_ID[i],1]
    + v_i__j_ID_SS2014[SS2014_j_ID[i],2]
    + v_ij_ID_SS2014[SS2014_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_SS2014[SS2014_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //SS2015
    for ( i in 1:N_SS2015 ) {
    p_SS2015[i] = a
    + v_group_ID [SS2015_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_SS2015[SS2015_i_ID[i],1]
    + v_i__j_ID_SS2015[SS2015_j_ID[i],2]
    + v_ij_ID_SS2015[SS2015_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_SS2015[SS2015_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //SS2016
    for ( i in 1:N_SS2016 ) {
    p_SS2016[i] = a
    + v_group_ID [SS2016_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_SS2016[SS2016_i_ID[i],1]
    + v_i__j_ID_SS2016[SS2016_j_ID[i],2]
    + v_ij_ID_SS2016[SS2016_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_SS2016[SS2016_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //SS2017
    for ( i in 1:N_SS2017 ) {
    p_SS2017[i] = a
    + v_group_ID [SS2017_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_SS2017[SS2017_i_ID[i],1]
    + v_i__j_ID_SS2017[SS2017_j_ID[i],2]
    + v_ij_ID_SS2017[SS2017_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_SS2017[SS2017_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //SS2018
    for ( i in 1:N_SS2018 ) {
    p_SS2018[i] = a
    + v_group_ID [SS2018_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_SS2018[SS2018_i_ID[i],1]
    + v_i__j_ID_SS2018[SS2018_j_ID[i],2]
    + v_ij_ID_SS2018[SS2018_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_SS2018[SS2018_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
    
    //SS2019
    for ( i in 1:N_SS2019 ) {
      p_SS2019[i] = a
      + v_group_ID [SS2019_group_ID[i]] * sigma_group_ID
      + v_i__j_ID_SS2019[SS2019_i_ID[i],1]
      + v_i__j_ID_SS2019[SS2019_j_ID[i],2]
      + v_ij_ID_SS2019[SS2019_ij_ID[i]]*sigma_ij_ID
      + v_i2j_ID_SS2019[SS2019_i2j_ID[i]] * sigma_i2j_ID
      ;
    }
       
    //VV2002
    for ( i in 1:N_VV2002 ) {
    p_VV2002[i] = a
    + v_group_ID [VV2002_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_VV2002[VV2002_i_ID[i],1]
    + v_i__j_ID_VV2002[VV2002_j_ID[i],2]
    + v_ij_ID_VV2002[VV2002_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_VV2002[VV2002_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //VV2003
    for ( i in 1:N_VV2003 ) {
    p_VV2003[i] = a
    + v_group_ID [VV2003_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_VV2003[VV2003_i_ID[i],1]
    + v_i__j_ID_VV2003[VV2003_j_ID[i],2]
    + v_ij_ID_VV2003[VV2003_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_VV2003[VV2003_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //VV2004
    for ( i in 1:N_VV2004 ) {
    p_VV2004[i] = a
    + v_group_ID [VV2004_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_VV2004[VV2004_i_ID[i],1]
    + v_i__j_ID_VV2004[VV2004_j_ID[i],2]
    + v_ij_ID_VV2004[VV2004_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_VV2004[VV2004_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //VV2005
    for ( i in 1:N_VV2005 ) {
    p_VV2005[i] = a
    + v_group_ID [VV2005_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_VV2005[VV2005_i_ID[i],1]
    + v_i__j_ID_VV2005[VV2005_j_ID[i],2]
    + v_ij_ID_VV2005[VV2005_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_VV2005[VV2005_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //VV2006
    for ( i in 1:N_VV2006 ) {
    p_VV2006[i] = a
    + v_group_ID [VV2006_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_VV2006[VV2006_i_ID[i],1]
    + v_i__j_ID_VV2006[VV2006_j_ID[i],2]
    + v_ij_ID_VV2006[VV2006_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_VV2006[VV2006_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //VV2007
    for ( i in 1:N_VV2007 ) {
    p_VV2007[i] = a
    + v_group_ID [VV2007_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_VV2007[VV2007_i_ID[i],1]
    + v_i__j_ID_VV2007[VV2007_j_ID[i],2]
    + v_ij_ID_VV2007[VV2007_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_VV2007[VV2007_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //VV2008
    for ( i in 1:N_VV2008 ) {
    p_VV2008[i] = a
    + v_group_ID [VV2008_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_VV2008[VV2008_i_ID[i],1]
    + v_i__j_ID_VV2008[VV2008_j_ID[i],2]
    + v_ij_ID_VV2008[VV2008_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_VV2008[VV2008_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //VV2009
    for ( i in 1:N_VV2009 ) {
    p_VV2009[i] = a
    + v_group_ID [VV2009_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_VV2009[VV2009_i_ID[i],1]
    + v_i__j_ID_VV2009[VV2009_j_ID[i],2]
    + v_ij_ID_VV2009[VV2009_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_VV2009[VV2009_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //VV2010
    for ( i in 1:N_VV2010 ) {
    p_VV2010[i] = a
    + v_group_ID [VV2010_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_VV2010[VV2010_i_ID[i],1]
    + v_i__j_ID_VV2010[VV2010_j_ID[i],2]
    + v_ij_ID_VV2010[VV2010_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_VV2010[VV2010_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //VV2011
    for ( i in 1:N_VV2011 ) {
    p_VV2011[i] = a
    + v_group_ID [VV2011_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_VV2011[VV2011_i_ID[i],1]
    + v_i__j_ID_VV2011[VV2011_j_ID[i],2]
    + v_ij_ID_VV2011[VV2011_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_VV2011[VV2011_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //VV2012
    for ( i in 1:N_VV2012 ) {
    p_VV2012[i] = a
    + v_group_ID [VV2012_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_VV2012[VV2012_i_ID[i],1]
    + v_i__j_ID_VV2012[VV2012_j_ID[i],2]
    + v_ij_ID_VV2012[VV2012_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_VV2012[VV2012_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //VV2013
    for ( i in 1:N_VV2013 ) {
    p_VV2013[i] = a
    + v_group_ID [VV2013_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_VV2013[VV2013_i_ID[i],1]
    + v_i__j_ID_VV2013[VV2013_j_ID[i],2]
    + v_ij_ID_VV2013[VV2013_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_VV2013[VV2013_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //VV2014
    for ( i in 1:N_VV2014 ) {
    p_VV2014[i] = a
    + v_group_ID [VV2014_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_VV2014[VV2014_i_ID[i],1]
    + v_i__j_ID_VV2014[VV2014_j_ID[i],2]
    + v_ij_ID_VV2014[VV2014_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_VV2014[VV2014_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //VV2015
    for ( i in 1:N_VV2015 ) {
    p_VV2015[i] = a
    + v_group_ID [VV2015_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_VV2015[VV2015_i_ID[i],1]
    + v_i__j_ID_VV2015[VV2015_j_ID[i],2]
    + v_ij_ID_VV2015[VV2015_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_VV2015[VV2015_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //VV2016
    for ( i in 1:N_VV2016 ) {
    p_VV2016[i] = a
    + v_group_ID [VV2016_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_VV2016[VV2016_i_ID[i],1]
    + v_i__j_ID_VV2016[VV2016_j_ID[i],2]
    + v_ij_ID_VV2016[VV2016_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_VV2016[VV2016_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //VV2017
    for ( i in 1:N_VV2017 ) {
    p_VV2017[i] = a
    + v_group_ID [VV2017_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_VV2017[VV2017_i_ID[i],1]
    + v_i__j_ID_VV2017[VV2017_j_ID[i],2]
    + v_ij_ID_VV2017[VV2017_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_VV2017[VV2017_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //VV2018
    for ( i in 1:N_VV2018 ) {
    p_VV2018[i] = a
    + v_group_ID [VV2018_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_VV2018[VV2018_i_ID[i],1]
    + v_i__j_ID_VV2018[VV2018_j_ID[i],2]
    + v_ij_ID_VV2018[VV2018_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_VV2018[VV2018_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
    
    //VV2019
    for ( i in 1:N_VV2019 ) {
      p_VV2019[i] = a
      + v_group_ID [VV2019_group_ID[i]] * sigma_group_ID
      + v_i__j_ID_VV2019[VV2019_i_ID[i],1]
      + v_i__j_ID_VV2019[VV2019_j_ID[i],2]
      + v_ij_ID_VV2019[VV2019_ij_ID[i]]*sigma_ij_ID
      + v_i2j_ID_VV2019[VV2019_i2j_ID[i]] * sigma_i2j_ID
      ;
    }
    
    //ZZ2003
    for ( i in 1:N_ZZ2003 ) {
    p_ZZ2003[i] = a
    + v_group_ID [ZZ2003_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_ZZ2003[ZZ2003_i_ID[i],1]
    + v_i__j_ID_ZZ2003[ZZ2003_j_ID[i],2]
    + v_ij_ID_ZZ2003[ZZ2003_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_ZZ2003[ZZ2003_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //ZZ2005
    for ( i in 1:N_ZZ2005 ) {
    p_ZZ2005[i] = a
    + v_group_ID [ZZ2005_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_ZZ2005[ZZ2005_i_ID[i],1]
    + v_i__j_ID_ZZ2005[ZZ2005_j_ID[i],2]
    + v_ij_ID_ZZ2005[ZZ2005_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_ZZ2005[ZZ2005_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //ZZ2006
    for ( i in 1:N_ZZ2006 ) {
    p_ZZ2006[i] = a
    + v_group_ID [ZZ2006_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_ZZ2006[ZZ2006_i_ID[i],1]
    + v_i__j_ID_ZZ2006[ZZ2006_j_ID[i],2]
    + v_ij_ID_ZZ2006[ZZ2006_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_ZZ2006[ZZ2006_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
    
    //ZZ2008
    for ( i in 1:N_ZZ2008 ) {
    p_ZZ2008[i] = a
    + v_group_ID [ZZ2008_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_ZZ2008[ZZ2008_i_ID[i],1]
    + v_i__j_ID_ZZ2008[ZZ2008_j_ID[i],2]
    + v_ij_ID_ZZ2008[ZZ2008_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_ZZ2008[ZZ2008_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //ZZ2009
    for ( i in 1:N_ZZ2009 ) {
    p_ZZ2009[i] = a
    + v_group_ID [ZZ2009_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_ZZ2009[ZZ2009_i_ID[i],1]
    + v_i__j_ID_ZZ2009[ZZ2009_j_ID[i],2]
    + v_ij_ID_ZZ2009[ZZ2009_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_ZZ2009[ZZ2009_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //ZZ2010
    for ( i in 1:N_ZZ2010 ) {
    p_ZZ2010[i] = a
    + v_group_ID [ZZ2010_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_ZZ2010[ZZ2010_i_ID[i],1]
    + v_i__j_ID_ZZ2010[ZZ2010_j_ID[i],2]
    + v_ij_ID_ZZ2010[ZZ2010_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_ZZ2010[ZZ2010_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //ZZ2011
    for ( i in 1:N_ZZ2011 ) {
    p_ZZ2011[i] = a
    + v_group_ID [ZZ2011_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_ZZ2011[ZZ2011_i_ID[i],1]
    + v_i__j_ID_ZZ2011[ZZ2011_j_ID[i],2]
    + v_ij_ID_ZZ2011[ZZ2011_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_ZZ2011[ZZ2011_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //ZZ2012
    for ( i in 1:N_ZZ2012 ) {
    p_ZZ2012[i] = a
    + v_group_ID [ZZ2012_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_ZZ2012[ZZ2012_i_ID[i],1]
    + v_i__j_ID_ZZ2012[ZZ2012_j_ID[i],2]
    + v_ij_ID_ZZ2012[ZZ2012_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_ZZ2012[ZZ2012_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //ZZ2013
    for ( i in 1:N_ZZ2013 ) {
    p_ZZ2013[i] = a
    + v_group_ID [ZZ2013_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_ZZ2013[ZZ2013_i_ID[i],1]
    + v_i__j_ID_ZZ2013[ZZ2013_j_ID[i],2]
    + v_ij_ID_ZZ2013[ZZ2013_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_ZZ2013[ZZ2013_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //ZZ2014
    for ( i in 1:N_ZZ2014 ) {
    p_ZZ2014[i] = a
    + v_group_ID [ZZ2014_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_ZZ2014[ZZ2014_i_ID[i],1]
    + v_i__j_ID_ZZ2014[ZZ2014_j_ID[i],2]
    + v_ij_ID_ZZ2014[ZZ2014_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_ZZ2014[ZZ2014_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //ZZ2015
    for ( i in 1:N_ZZ2015 ) {
    p_ZZ2015[i] = a
    + v_group_ID [ZZ2015_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_ZZ2015[ZZ2015_i_ID[i],1]
    + v_i__j_ID_ZZ2015[ZZ2015_j_ID[i],2]
    + v_ij_ID_ZZ2015[ZZ2015_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_ZZ2015[ZZ2015_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //ZZ2016
    for ( i in 1:N_ZZ2016 ) {
    p_ZZ2016[i] = a
    + v_group_ID [ZZ2016_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_ZZ2016[ZZ2016_i_ID[i],1]
    + v_i__j_ID_ZZ2016[ZZ2016_j_ID[i],2]
    + v_ij_ID_ZZ2016[ZZ2016_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_ZZ2016[ZZ2016_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //ZZ2017
    for ( i in 1:N_ZZ2017 ) {
    p_ZZ2017[i] = a
    + v_group_ID [ZZ2017_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_ZZ2017[ZZ2017_i_ID[i],1]
    + v_i__j_ID_ZZ2017[ZZ2017_j_ID[i],2]
    + v_ij_ID_ZZ2017[ZZ2017_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_ZZ2017[ZZ2017_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
    //ZZ2018
    for ( i in 1:N_ZZ2018 ) {
    p_ZZ2018[i] = a
    + v_group_ID [ZZ2018_group_ID[i]] * sigma_group_ID
    + v_i__j_ID_ZZ2018[ZZ2018_i_ID[i],1]
    + v_i__j_ID_ZZ2018[ZZ2018_j_ID[i],2]
    + v_ij_ID_ZZ2018[ZZ2018_ij_ID[i]]*sigma_ij_ID
    + v_i2j_ID_ZZ2018[ZZ2018_i2j_ID[i]] * sigma_i2j_ID
    ;
    }
       
       //ZZ2019
    for ( i in 1:N_ZZ2019 ) {
      p_ZZ2019[i] = a
      + v_group_ID [ZZ2019_group_ID[i]] * sigma_group_ID
      + v_i__j_ID_ZZ2019[ZZ2019_i_ID[i],1]
      + v_i__j_ID_ZZ2019[ZZ2019_j_ID[i],2]
      + v_ij_ID_ZZ2019[ZZ2019_ij_ID[i]]*sigma_ij_ID
      + v_i2j_ID_ZZ2019[ZZ2019_i2j_ID[i]] * sigma_i2j_ID
      ;
    }
          	
      	
      	// update targets
      	y_BB2002 ~ binomial_logit( denominator_BB2002,p_BB2002 );
        y_BB2003 ~ binomial_logit( denominator_BB2003,p_BB2003 );
        y_BB2004 ~ binomial_logit( denominator_BB2004,p_BB2004 );
        y_BB2005 ~ binomial_logit( denominator_BB2005,p_BB2005 );
        y_BB2006 ~ binomial_logit( denominator_BB2006,p_BB2006 );
        y_BB2007 ~ binomial_logit( denominator_BB2007,p_BB2007 );
        y_BB2008 ~ binomial_logit( denominator_BB2008,p_BB2008 );
        y_BB2009 ~ binomial_logit( denominator_BB2009,p_BB2009 );
        y_BB2010 ~ binomial_logit( denominator_BB2010,p_BB2010 );
        y_BB2011 ~ binomial_logit( denominator_BB2011,p_BB2011 );
        y_BB2012 ~ binomial_logit( denominator_BB2012,p_BB2012 );
        y_BB2013 ~ binomial_logit( denominator_BB2013,p_BB2013 );
        y_BB2014 ~ binomial_logit( denominator_BB2014,p_BB2014 );
        y_BB2015 ~ binomial_logit( denominator_BB2015,p_BB2015 );
        y_BB2016 ~ binomial_logit( denominator_BB2016,p_BB2016 );
        y_BB2017 ~ binomial_logit( denominator_BB2017,p_BB2017 );
        y_BB2018 ~ binomial_logit( denominator_BB2018,p_BB2018 );
        y_CC2012 ~ binomial_logit( denominator_CC2012,p_CC2012 );
        y_CC2013 ~ binomial_logit( denominator_CC2013,p_CC2013 );
        y_CC2014 ~ binomial_logit( denominator_CC2014,p_CC2014 );
        y_CC2015 ~ binomial_logit( denominator_CC2015,p_CC2015 );
        y_CC2016 ~ binomial_logit( denominator_CC2016,p_CC2016 );
        y_CC2017 ~ binomial_logit( denominator_CC2017,p_CC2017 );
        y_CC2018 ~ binomial_logit( denominator_CC2018,p_CC2018 );
        y_DD2007 ~ binomial_logit( denominator_DD2007,p_DD2007 );
        y_DD2008 ~ binomial_logit( denominator_DD2008,p_DD2008 );
        y_DD2009 ~ binomial_logit( denominator_DD2009,p_DD2009 );
        y_DD2010 ~ binomial_logit( denominator_DD2010,p_DD2010 );
        y_DD2011 ~ binomial_logit( denominator_DD2011,p_DD2011 );
        y_DD2012 ~ binomial_logit( denominator_DD2012,p_DD2012 );
        y_DD2013 ~ binomial_logit( denominator_DD2013,p_DD2013 );
        y_EE2012 ~ binomial_logit( denominator_EE2012,p_EE2012 );
        y_EE2013 ~ binomial_logit( denominator_EE2013,p_EE2013 );
        y_EE2014 ~ binomial_logit( denominator_EE2014,p_EE2014 );
        y_EE2015 ~ binomial_logit( denominator_EE2015,p_EE2015 );
        y_EE2016 ~ binomial_logit( denominator_EE2016,p_EE2016 );
        y_EE2017 ~ binomial_logit( denominator_EE2017,p_EE2017 );
        y_EE2018 ~ binomial_logit( denominator_EE2018,p_EE2018 );
        y_GG2002 ~ binomial_logit( denominator_GG2002,p_GG2002 );
        y_GG2003 ~ binomial_logit( denominator_GG2003,p_GG2003 );
        y_GG2004 ~ binomial_logit( denominator_GG2004,p_GG2004 );
        y_GG2005 ~ binomial_logit( denominator_GG2005,p_GG2005 );
        y_GG2006 ~ binomial_logit( denominator_GG2006,p_GG2006 );
        y_GG2007 ~ binomial_logit( denominator_GG2007,p_GG2007 );
        y_GG2008 ~ binomial_logit( denominator_GG2008,p_GG2008 );
        y_GG2009 ~ binomial_logit( denominator_GG2009,p_GG2009 );
        y_GG2010 ~ binomial_logit( denominator_GG2010,p_GG2010 );
        y_GG2011 ~ binomial_logit( denominator_GG2011,p_GG2011 );
        y_GG2012 ~ binomial_logit( denominator_GG2012,p_GG2012 );
        y_GG2013 ~ binomial_logit( denominator_GG2013,p_GG2013 );
        y_GG2014 ~ binomial_logit( denominator_GG2014,p_GG2014 );
        y_GG2015 ~ binomial_logit( denominator_GG2015,p_GG2015 );
        y_GG2016 ~ binomial_logit( denominator_GG2016,p_GG2016 );
        y_GG2017 ~ binomial_logit( denominator_GG2017,p_GG2017 );
        y_GG2018 ~ binomial_logit( denominator_GG2018,p_GG2018 );
        y_HH2003 ~ binomial_logit( denominator_HH2003,p_HH2003 );
        y_HH2004 ~ binomial_logit( denominator_HH2004,p_HH2004 );
        y_HH2005 ~ binomial_logit( denominator_HH2005,p_HH2005 );
        y_HH2006 ~ binomial_logit( denominator_HH2006,p_HH2006 );
        y_HH2007 ~ binomial_logit( denominator_HH2007,p_HH2007 );
        y_HH2008 ~ binomial_logit( denominator_HH2008,p_HH2008 );
        y_HH2009 ~ binomial_logit( denominator_HH2009,p_HH2009 );
        y_HH2010 ~ binomial_logit( denominator_HH2010,p_HH2010 );
        y_HH2011 ~ binomial_logit( denominator_HH2011,p_HH2011 );
        y_HH2012 ~ binomial_logit( denominator_HH2012,p_HH2012 );
        y_HH2013 ~ binomial_logit( denominator_HH2013,p_HH2013 );
        y_HH2014 ~ binomial_logit( denominator_HH2014,p_HH2014 );
        y_HH2015 ~ binomial_logit( denominator_HH2015,p_HH2015 );
        y_HH2016 ~ binomial_logit( denominator_HH2016,p_HH2016 );
        y_HH2017 ~ binomial_logit( denominator_HH2017,p_HH2017 );
        y_HH2018 ~ binomial_logit( denominator_HH2018,p_HH2018 );
        y_KK2004 ~ binomial_logit( denominator_KK2004,p_KK2004 );
        y_KK2005 ~ binomial_logit( denominator_KK2005,p_KK2005 );
        y_KK2006 ~ binomial_logit( denominator_KK2006,p_KK2006 );
        y_KK2007 ~ binomial_logit( denominator_KK2007,p_KK2007 );
        y_KK2008 ~ binomial_logit( denominator_KK2008,p_KK2008 );
        y_KK2009 ~ binomial_logit( denominator_KK2009,p_KK2009 );
        y_KK2010 ~ binomial_logit( denominator_KK2010,p_KK2010 );
        y_KK2011 ~ binomial_logit( denominator_KK2011,p_KK2011 );
        y_KK2012 ~ binomial_logit( denominator_KK2012,p_KK2012 );
        y_KK2013 ~ binomial_logit( denominator_KK2013,p_KK2013 );
        y_KK2014 ~ binomial_logit( denominator_KK2014,p_KK2014 );
        y_KK2015 ~ binomial_logit( denominator_KK2015,p_KK2015 );
        y_KK2016 ~ binomial_logit( denominator_KK2016,p_KK2016 );
        y_KK2017 ~ binomial_logit( denominator_KK2017,p_KK2017 );
        y_KK2018 ~ binomial_logit( denominator_KK2018,p_KK2018 );
        y_NN2008 ~ binomial_logit( denominator_NN2008,p_NN2008 );
        y_NN2009 ~ binomial_logit( denominator_NN2009,p_NN2009 );
        y_NN2010 ~ binomial_logit( denominator_NN2010,p_NN2010 );
        y_NN2011 ~ binomial_logit( denominator_NN2011,p_NN2011 );
        y_NN2012 ~ binomial_logit( denominator_NN2012,p_NN2012 );
        y_NN2013 ~ binomial_logit( denominator_NN2013,p_NN2013 );
        y_NN2014 ~ binomial_logit( denominator_NN2014,p_NN2014 );
        y_NN2015 ~ binomial_logit( denominator_NN2015,p_NN2015 );
        y_NN2016 ~ binomial_logit( denominator_NN2016,p_NN2016 );
        y_NN2017 ~ binomial_logit( denominator_NN2017,p_NN2017 );
        y_NN2018 ~ binomial_logit( denominator_NN2018,p_NN2018 );
        y_SS2007 ~ binomial_logit( denominator_SS2007,p_SS2007 );
        y_SS2008 ~ binomial_logit( denominator_SS2008,p_SS2008 );
        y_SS2009 ~ binomial_logit( denominator_SS2009,p_SS2009 );
        y_SS2010 ~ binomial_logit( denominator_SS2010,p_SS2010 );
        y_SS2011 ~ binomial_logit( denominator_SS2011,p_SS2011 );
        y_SS2012 ~ binomial_logit( denominator_SS2012,p_SS2012 );
        y_SS2013 ~ binomial_logit( denominator_SS2013,p_SS2013 );
        y_SS2014 ~ binomial_logit( denominator_SS2014,p_SS2014 );
        y_SS2015 ~ binomial_logit( denominator_SS2015,p_SS2015 );
        y_SS2016 ~ binomial_logit( denominator_SS2016,p_SS2016 );
        y_SS2017 ~ binomial_logit( denominator_SS2017,p_SS2017 );
        y_SS2018 ~ binomial_logit( denominator_SS2018,p_SS2018 );
        y_VV2002 ~ binomial_logit( denominator_VV2002,p_VV2002 );
        y_VV2003 ~ binomial_logit( denominator_VV2003,p_VV2003 );
        y_VV2004 ~ binomial_logit( denominator_VV2004,p_VV2004 );
        y_VV2005 ~ binomial_logit( denominator_VV2005,p_VV2005 );
        y_VV2006 ~ binomial_logit( denominator_VV2006,p_VV2006 );
        y_VV2007 ~ binomial_logit( denominator_VV2007,p_VV2007 );
        y_VV2008 ~ binomial_logit( denominator_VV2008,p_VV2008 );
        y_VV2009 ~ binomial_logit( denominator_VV2009,p_VV2009 );
        y_VV2010 ~ binomial_logit( denominator_VV2010,p_VV2010 );
        y_VV2011 ~ binomial_logit( denominator_VV2011,p_VV2011 );
        y_VV2012 ~ binomial_logit( denominator_VV2012,p_VV2012 );
        y_VV2013 ~ binomial_logit( denominator_VV2013,p_VV2013 );
        y_VV2014 ~ binomial_logit( denominator_VV2014,p_VV2014 );
        y_VV2015 ~ binomial_logit( denominator_VV2015,p_VV2015 );
        y_VV2016 ~ binomial_logit( denominator_VV2016,p_VV2016 );
        y_VV2017 ~ binomial_logit( denominator_VV2017,p_VV2017 );
        y_VV2018 ~ binomial_logit( denominator_VV2018,p_VV2018 );
        y_ZZ2003 ~ binomial_logit( denominator_ZZ2003,p_ZZ2003 );
        y_ZZ2005 ~ binomial_logit( denominator_ZZ2005,p_ZZ2005 );
        y_ZZ2006 ~ binomial_logit( denominator_ZZ2006,p_ZZ2006 );
        y_ZZ2008 ~ binomial_logit( denominator_ZZ2008,p_ZZ2008 );
        y_ZZ2009 ~ binomial_logit( denominator_ZZ2009,p_ZZ2009 );
        y_ZZ2010 ~ binomial_logit( denominator_ZZ2010,p_ZZ2010 );
        y_ZZ2011 ~ binomial_logit( denominator_ZZ2011,p_ZZ2011 );
        y_ZZ2012 ~ binomial_logit( denominator_ZZ2012,p_ZZ2012 );
        y_ZZ2013 ~ binomial_logit( denominator_ZZ2013,p_ZZ2013 );
        y_ZZ2014 ~ binomial_logit( denominator_ZZ2014,p_ZZ2014 );
        y_ZZ2015 ~ binomial_logit( denominator_ZZ2015,p_ZZ2015 );
        y_ZZ2016 ~ binomial_logit( denominator_ZZ2016,p_ZZ2016 );
        y_ZZ2017 ~ binomial_logit( denominator_ZZ2017,p_ZZ2017 );
        y_ZZ2018 ~ binomial_logit( denominator_ZZ2018,p_ZZ2018 );
        y_BB2019 ~ binomial_logit( denominator_BB2019,p_BB2019 );
        y_CC2019 ~ binomial_logit( denominator_CC2019,p_CC2019 );
        y_EE2019 ~ binomial_logit( denominator_EE2019,p_EE2019 );
        y_GG2019 ~ binomial_logit( denominator_GG2019,p_GG2019 );
        y_HH2019 ~ binomial_logit( denominator_HH2019,p_HH2019 );
        y_KK2019 ~ binomial_logit( denominator_KK2019,p_KK2019 );
        y_SS2019 ~ binomial_logit( denominator_SS2019,p_SS2019 );
        y_VV2019 ~ binomial_logit( denominator_VV2019,p_VV2019 );
        y_ZZ2019 ~ binomial_logit( denominator_ZZ2019,p_ZZ2019 );

}
      	
generated quantities{
	matrix[2,2] Rho_i__j_ID;

	real<lower=0> variance_group;
	real<lower=0> variance_i;
	real<lower=0> variance_j;
	real<lower=0> variance_ij;
	real<lower=0> variance_i2j;
	real<lower=0> rho_ij;

	Rho_i__j_ID = L_Rho_i__j_ID * L_Rho_i__j_ID';
	
	variance_group = sigma_group_ID^2;
	variance_i = sigma_i__j_ID[1]^2;
	variance_j = sigma_i__j_ID[2]^2;
	variance_ij = sigma_ij_ID^2;
	variance_i2j = sigma_i2j_ID^2;

	rho_ij = variance_ij / (variance_ij + variance_i2j + 3.292517);
}
"