:- modeh(*,diseasetype(+patient)).
:- modeb(*,cr_arteriolar_equivalent(+patient,#level)).
:- modeb(*,cr_venular_equivalent(+patient,#level)).
:- modeb(*,av_ratio(+patient,#level)).
:- modeb(*,sd_arteriole(+patient,#level)).
:- modeb(*,sd_venular(+patient,#level)).
:- modeb(*,fd_arteriole(+patient,#level)).
:- modeb(*,fd_venular(+patient,#level)).
:- modeb(*,tortuosity_arteriole(+patient,#level)).
:- modeb(*,tortuosity_venular(+patient,#level)).


:- set(positive_example_inflation,15).
:- set(negative_example_inflation, 5).
:- set(clause_length,15).
:- set(engine,toplog).
:- set(depth,10).
:- set(i,10).
:- set(maxneg,3).
:- set(evalfn,compression).
:- set(print,1).
%:- set(theory_construction,incremental).
:- set(verbose,4).

cr_arteriolar_equivalent(patientid_0,high).
cr_arteriolar_equivalent(patientid_1,low).
cr_arteriolar_equivalent(patientid_2,high).
cr_arteriolar_equivalent(patientid_3,high).
cr_arteriolar_equivalent(patientid_4,high).
cr_arteriolar_equivalent(patientid_5,medium).
cr_arteriolar_equivalent(patientid_6,medium).
cr_arteriolar_equivalent(patientid_7,high).
cr_arteriolar_equivalent(patientid_8,high).
cr_arteriolar_equivalent(patientid_9,high).
cr_arteriolar_equivalent(patientid_10,medium).
cr_arteriolar_equivalent(patientid_11,low).
cr_arteriolar_equivalent(patientid_12,high).
cr_arteriolar_equivalent(patientid_13,high).
cr_arteriolar_equivalent(patientid_14,low).
cr_arteriolar_equivalent(patientid_15,high).
cr_arteriolar_equivalent(patientid_16,medium).
cr_arteriolar_equivalent(patientid_17,low).
cr_arteriolar_equivalent(patientid_18,high).
cr_arteriolar_equivalent(patientid_19,high).
cr_arteriolar_equivalent(patientid_20,high).
cr_arteriolar_equivalent(patientid_21,high).
cr_arteriolar_equivalent(patientid_22,high).
cr_arteriolar_equivalent(patientid_23,high).
cr_arteriolar_equivalent(patientid_24,high).
cr_arteriolar_equivalent(patientid_25,high).
cr_arteriolar_equivalent(patientid_26,high).
cr_arteriolar_equivalent(patientid_27,high).
cr_arteriolar_equivalent(patientid_28,high).
cr_arteriolar_equivalent(patientid_29,medium).
cr_arteriolar_equivalent(patientid_30,high).
cr_arteriolar_equivalent(patientid_31,high).
cr_arteriolar_equivalent(patientid_32,medium).
cr_arteriolar_equivalent(patientid_33,high).
cr_arteriolar_equivalent(patientid_34,high).
cr_arteriolar_equivalent(patientid_35,medium).
cr_venular_equivalent(patientid_0,medium).
cr_venular_equivalent(patientid_1,low).
cr_venular_equivalent(patientid_2,medium).
cr_venular_equivalent(patientid_3,low).
cr_venular_equivalent(patientid_4,medium).
cr_venular_equivalent(patientid_5,low).
cr_venular_equivalent(patientid_6,medium).
cr_venular_equivalent(patientid_7,medium).
cr_venular_equivalent(patientid_8,low).
cr_venular_equivalent(patientid_9,medium).
cr_venular_equivalent(patientid_10,low).
cr_venular_equivalent(patientid_11,low).
cr_venular_equivalent(patientid_12,medium).
cr_venular_equivalent(patientid_13,high).
cr_venular_equivalent(patientid_14,low).
cr_venular_equivalent(patientid_15,medium).
cr_venular_equivalent(patientid_16,medium).
cr_venular_equivalent(patientid_17,low).
cr_venular_equivalent(patientid_18,medium).
cr_venular_equivalent(patientid_19,low).
cr_venular_equivalent(patientid_20,low).
cr_venular_equivalent(patientid_21,medium).
cr_venular_equivalent(patientid_22,medium).
cr_venular_equivalent(patientid_23,low).
cr_venular_equivalent(patientid_24,medium).
cr_venular_equivalent(patientid_25,medium).
cr_venular_equivalent(patientid_26,medium).
cr_venular_equivalent(patientid_27,medium).
cr_venular_equivalent(patientid_28,medium).
cr_venular_equivalent(patientid_29,medium).
cr_venular_equivalent(patientid_30,medium).
cr_venular_equivalent(patientid_31,medium).
cr_venular_equivalent(patientid_32,medium).
cr_venular_equivalent(patientid_33,medium).
cr_venular_equivalent(patientid_34,low).
cr_venular_equivalent(patientid_35,medium).
av_ratio(patientid_0,low).
av_ratio(patientid_1,low).
av_ratio(patientid_2,low).
av_ratio(patientid_3,medium).
av_ratio(patientid_4,low).
av_ratio(patientid_5,low).
av_ratio(patientid_6,low).
av_ratio(patientid_7,low).
av_ratio(patientid_8,medium).
av_ratio(patientid_9,medium).
av_ratio(patientid_10,high).
av_ratio(patientid_11,low).
av_ratio(patientid_12,low).
av_ratio(patientid_13,low).
av_ratio(patientid_14,high).
av_ratio(patientid_15,low).
av_ratio(patientid_16,low).
av_ratio(patientid_17,low).
av_ratio(patientid_18,low).
av_ratio(patientid_19,medium).
av_ratio(patientid_20,medium).
av_ratio(patientid_21,low).
av_ratio(patientid_22,low).
av_ratio(patientid_23,high).
av_ratio(patientid_24,low).
av_ratio(patientid_25,low).
av_ratio(patientid_26,low).
av_ratio(patientid_27,low).
av_ratio(patientid_28,medium).
av_ratio(patientid_29,low).
av_ratio(patientid_30,low).
av_ratio(patientid_31,low).
av_ratio(patientid_32,low).
av_ratio(patientid_33,low).
av_ratio(patientid_34,low).
av_ratio(patientid_35,low).
sd_arteriole(patientid_0,high).
sd_arteriole(patientid_1,low).
sd_arteriole(patientid_2,medium).
sd_arteriole(patientid_3,medium).
sd_arteriole(patientid_4,medium).
sd_arteriole(patientid_5,medium).
sd_arteriole(patientid_6,medium).
sd_arteriole(patientid_7,medium).
sd_arteriole(patientid_8,medium).
sd_arteriole(patientid_9,high).
sd_arteriole(patientid_10,low).
sd_arteriole(patientid_11,low).
sd_arteriole(patientid_12,medium).
sd_arteriole(patientid_13,high).
sd_arteriole(patientid_14,low).
sd_arteriole(patientid_15,medium).
sd_arteriole(patientid_16,low).
sd_arteriole(patientid_17,medium).
sd_arteriole(patientid_18,medium).
sd_arteriole(patientid_19,high).
sd_arteriole(patientid_20,high).
sd_arteriole(patientid_21,medium).
sd_arteriole(patientid_22,medium).
sd_arteriole(patientid_23,high).
sd_arteriole(patientid_24,medium).
sd_arteriole(patientid_25,medium).
sd_arteriole(patientid_26,medium).
sd_arteriole(patientid_27,medium).
sd_arteriole(patientid_28,high).
sd_arteriole(patientid_29,medium).
sd_arteriole(patientid_30,medium).
sd_arteriole(patientid_31,medium).
sd_arteriole(patientid_32,medium).
sd_arteriole(patientid_33,high).
sd_arteriole(patientid_34,high).
sd_arteriole(patientid_35,high).
sd_venular(patientid_0,medium).
sd_venular(patientid_1,high).
sd_venular(patientid_2,medium).
sd_venular(patientid_3,low).
sd_venular(patientid_4,medium).
sd_venular(patientid_5,medium).
sd_venular(patientid_6,medium).
sd_venular(patientid_7,medium).
sd_venular(patientid_8,medium).
sd_venular(patientid_9,medium).
sd_venular(patientid_10,low).
sd_venular(patientid_11,medium).
sd_venular(patientid_12,medium).
sd_venular(patientid_13,high).
sd_venular(patientid_14,low).
sd_venular(patientid_15,medium).
sd_venular(patientid_16,medium).
sd_venular(patientid_17,medium).
sd_venular(patientid_18,medium).
sd_venular(patientid_19,medium).
sd_venular(patientid_20,low).
sd_venular(patientid_21,low).
sd_venular(patientid_22,medium).
sd_venular(patientid_23,low).
sd_venular(patientid_24,medium).
sd_venular(patientid_25,medium).
sd_venular(patientid_26,medium).
sd_venular(patientid_27,medium).
sd_venular(patientid_28,high).
sd_venular(patientid_29,medium).
sd_venular(patientid_30,medium).
sd_venular(patientid_31,medium).
sd_venular(patientid_32,medium).
sd_venular(patientid_33,medium).
sd_venular(patientid_34,low).
sd_venular(patientid_35,low).
fd_arteriole(patientid_0,medium).
fd_arteriole(patientid_1,low).
fd_arteriole(patientid_2,high).
fd_arteriole(patientid_3,medium).
fd_arteriole(patientid_4,high).
fd_arteriole(patientid_5,low).
fd_arteriole(patientid_6,high).
fd_arteriole(patientid_7,medium).
fd_arteriole(patientid_8,medium).
fd_arteriole(patientid_9,high).
fd_arteriole(patientid_10,low).
fd_arteriole(patientid_11,medium).
fd_arteriole(patientid_12,high).
fd_arteriole(patientid_13,high).
fd_arteriole(patientid_14,low).
fd_arteriole(patientid_15,high).
fd_arteriole(patientid_16,medium).
fd_arteriole(patientid_17,low).
fd_arteriole(patientid_18,medium).
fd_arteriole(patientid_19,high).
fd_arteriole(patientid_20,high).
fd_arteriole(patientid_21,low).
fd_arteriole(patientid_22,high).
fd_arteriole(patientid_23,medium).
fd_arteriole(patientid_24,medium).
fd_arteriole(patientid_25,high).
fd_arteriole(patientid_26,high).
fd_arteriole(patientid_27,medium).
fd_arteriole(patientid_28,high).
fd_arteriole(patientid_29,medium).
fd_arteriole(patientid_30,high).
fd_arteriole(patientid_31,high).
fd_arteriole(patientid_32,high).
fd_arteriole(patientid_33,high).
fd_arteriole(patientid_34,medium).
fd_arteriole(patientid_35,medium).
fd_venular(patientid_0,medium).
fd_venular(patientid_1,low).
fd_venular(patientid_2,high).
fd_venular(patientid_3,medium).
fd_venular(patientid_4,high).
fd_venular(patientid_5,low).
fd_venular(patientid_6,high).
fd_venular(patientid_7,medium).
fd_venular(patientid_8,medium).
fd_venular(patientid_9,high).
fd_venular(patientid_10,low).
fd_venular(patientid_11,medium).
fd_venular(patientid_12,medium).
fd_venular(patientid_13,high).
fd_venular(patientid_14,low).
fd_venular(patientid_15,high).
fd_venular(patientid_16,medium).
fd_venular(patientid_17,medium).
fd_venular(patientid_18,medium).
fd_venular(patientid_19,high).
fd_venular(patientid_20,high).
fd_venular(patientid_21,low).
fd_venular(patientid_22,high).
fd_venular(patientid_23,medium).
fd_venular(patientid_24,medium).
fd_venular(patientid_25,high).
fd_venular(patientid_26,high).
fd_venular(patientid_27,medium).
fd_venular(patientid_28,high).
fd_venular(patientid_29,high).
fd_venular(patientid_30,high).
fd_venular(patientid_31,high).
fd_venular(patientid_32,high).
fd_venular(patientid_33,high).
fd_venular(patientid_34,medium).
fd_venular(patientid_35,medium).
tortuosity_arteriole(patientid_0,medium).
tortuosity_arteriole(patientid_1,low).
tortuosity_arteriole(patientid_2,low).
tortuosity_arteriole(patientid_3,high).
tortuosity_arteriole(patientid_4,low).
tortuosity_arteriole(patientid_5,medium).
tortuosity_arteriole(patientid_6,low).
tortuosity_arteriole(patientid_7,low).
tortuosity_arteriole(patientid_8,low).
tortuosity_arteriole(patientid_9,medium).
tortuosity_arteriole(patientid_10,high).
tortuosity_arteriole(patientid_11,low).
tortuosity_arteriole(patientid_12,high).
tortuosity_arteriole(patientid_13,low).
tortuosity_arteriole(patientid_14,high).
tortuosity_arteriole(patientid_15,low).
tortuosity_arteriole(patientid_16,low).
tortuosity_arteriole(patientid_17,low).
tortuosity_arteriole(patientid_18,low).
tortuosity_arteriole(patientid_19,low).
tortuosity_arteriole(patientid_20,medium).
tortuosity_arteriole(patientid_21,low).
tortuosity_arteriole(patientid_22,low).
tortuosity_arteriole(patientid_23,low).
tortuosity_arteriole(patientid_24,medium).
tortuosity_arteriole(patientid_25,low).
tortuosity_arteriole(patientid_26,low).
tortuosity_arteriole(patientid_27,low).
tortuosity_arteriole(patientid_28,medium).
tortuosity_arteriole(patientid_29,low).
tortuosity_arteriole(patientid_30,low).
tortuosity_arteriole(patientid_31,medium).
tortuosity_arteriole(patientid_32,low).
tortuosity_arteriole(patientid_33,low).
tortuosity_arteriole(patientid_34,low).
tortuosity_arteriole(patientid_35,low).
tortuosity_venular(patientid_0,low).
tortuosity_venular(patientid_1,low).
tortuosity_venular(patientid_2,low).
tortuosity_venular(patientid_3,low).
tortuosity_venular(patientid_4,low).
tortuosity_venular(patientid_5,low).
tortuosity_venular(patientid_6,low).
tortuosity_venular(patientid_7,low).
tortuosity_venular(patientid_8,low).
tortuosity_venular(patientid_9,low).
tortuosity_venular(patientid_10,low).
tortuosity_venular(patientid_11,low).
tortuosity_venular(patientid_12,low).
tortuosity_venular(patientid_13,low).
tortuosity_venular(patientid_14,low).
tortuosity_venular(patientid_15,low).
tortuosity_venular(patientid_16,low).
tortuosity_venular(patientid_17,low).
tortuosity_venular(patientid_18,low).
tortuosity_venular(patientid_19,low).
tortuosity_venular(patientid_20,low).
tortuosity_venular(patientid_21,low).
tortuosity_venular(patientid_22,medium).
tortuosity_venular(patientid_23,low).
tortuosity_venular(patientid_24,low).
tortuosity_venular(patientid_25,low).
tortuosity_venular(patientid_26,low).
tortuosity_venular(patientid_27,low).
tortuosity_venular(patientid_28,low).
tortuosity_venular(patientid_29,low).
tortuosity_venular(patientid_30,low).
tortuosity_venular(patientid_31,low).
tortuosity_venular(patientid_32,low).
tortuosity_venular(patientid_33,low).
tortuosity_venular(patientid_34,high).
tortuosity_venular(patientid_35,low).
