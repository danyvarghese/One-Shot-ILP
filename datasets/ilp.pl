:- modeh(2,alphabet(+character)).
:- modeb(*,has_gemproperties(+character,-properties)).
:- modeb(*,has_gemproperties_count(+properties,#int)).
:- modeb(*,has_dirproperties(+character,-properties)).
:- modeb(*,has_dirproperties_feature(+properties,#dir)).
:- set(positive_example_inflation, 10).
:- set(negative_example_inflation, 5).
:- set(clause_length, 15).
:- set(cross_validation_folds,10).
%:- set(bottom_early_stop,true).
%:- set(clause_evaluation,left_to_right).
:- set(engine,toplog).
:- set(depth,10).
:- set(i,10).
:- set(maxneg,100).
:- set(evalfn,compression).
%:-set(minpos,1).:- set(print,2).
:- set(randomize_recall,false).
:- set(theory_construction,incremental).
:- set(verbose,2).
dir(se).
dir(sw).
dir(ne).
dir(nw).


character(character_0).
character(character_1).
character(character_2).
character(character_3).
character(character_4).
character(character_5).
character(character_6).
character(character_7).
character(character_8).
character(character_9).
character(character_10).
character(character_11).
character(character_12).
character(character_13).
character(character_14).
character(character_15).
character(character_16).
character(character_17).


properties(loops_0).
properties(loops_1).
properties(loops_2).
properties(loops_3).
properties(loops_4).
properties(loops_5).
properties(loops_6).
properties(loops_7).
properties(loops_8).
properties(loops_9).
properties(loops_10).
properties(loops_11).
properties(loops_12).
properties(loops_13).
properties(loops_14).
properties(loops_15).
properties(loops_16).
properties(loops_17).


properties(arcs_0).
properties(arcs_1).
properties(arcs_2).
properties(arcs_3).
properties(arcs_4).
properties(arcs_5).
properties(arcs_6).
properties(arcs_7).
properties(arcs_8).
properties(arcs_9).
properties(arcs_10).
properties(arcs_11).
properties(arcs_12).
properties(arcs_13).
properties(arcs_14).
properties(arcs_15).
properties(arcs_16).
properties(arcs_17).


properties(junctions_0).
properties(junctions_1).
properties(junctions_2).
properties(junctions_3).
properties(junctions_4).
properties(junctions_5).
properties(junctions_6).
properties(junctions_7).
properties(junctions_8).
properties(junctions_9).
properties(junctions_10).
properties(junctions_11).
properties(junctions_12).
properties(junctions_13).
properties(junctions_14).
properties(junctions_15).
properties(junctions_16).
properties(junctions_17).
properties(terminals_0).
properties(terminals_1).
properties(terminals_2).
properties(terminals_3).
properties(terminals_4).
properties(terminals_5).
properties(terminals_6).
properties(terminals_7).
properties(terminals_8).
properties(terminals_9).
properties(terminals_10).
properties(terminals_11).
properties(terminals_12).
properties(terminals_13).
properties(terminals_14).
properties(terminals_15).
properties(terminals_16).
properties(terminals_17).


properties(starts_0).
properties(starts_1).
properties(starts_2).
properties(starts_3).
properties(starts_4).
properties(starts_5).
properties(starts_6).
properties(starts_7).
properties(starts_8).
properties(starts_9).
properties(starts_10).
properties(starts_11).
properties(starts_12).
properties(starts_13).
properties(starts_14).
properties(starts_15).
properties(starts_16).
properties(starts_17).


properties(ends_0).
properties(ends_1).
properties(ends_2).
properties(ends_3).
properties(ends_4).
properties(ends_5).
properties(ends_6).
properties(ends_7).
properties(ends_8).
properties(ends_9).
properties(ends_10).
properties(ends_11).
properties(ends_12).
properties(ends_13).
properties(ends_14).
properties(ends_15).
properties(ends_16).
properties(ends_17).


has_gemproperties(character_0,loops_0).
has_gemproperties_count(loops_0,2).
has_gemproperties(character_0,arcs_0).
has_gemproperties_count(arcs_0,3).
has_gemproperties(character_0,junctions_0).
has_gemproperties_count(junctions_0,3).
has_gemproperties(character_0,terminals_0).
has_gemproperties_count(terminals_0,2).
has_dirproperties(character_0,starts_0).
has_dirproperties_feature(starts_0,sw).


has_gemproperties(character_1,loops_1).
has_gemproperties_count(loops_1,3).
has_gemproperties(character_1,arcs_1).
has_gemproperties_count(arcs_1,3).
has_gemproperties(character_1,junctions_1).
has_gemproperties_count(junctions_1,4).
has_gemproperties(character_1,terminals_1).
has_gemproperties_count(terminals_1,2).
has_dirproperties(character_1,starts_1).
has_dirproperties_feature(starts_1,sw).


has_gemproperties(character_2,loops_2).
has_gemproperties_count(loops_2,3).
has_gemproperties(character_2,arcs_2).
has_gemproperties_count(arcs_2,3).
has_gemproperties(character_2,junctions_2).
has_gemproperties_count(junctions_2,4).
has_gemproperties(character_2,terminals_2).
has_gemproperties_count(terminals_2,2).
has_dirproperties(character_2,starts_2).
has_dirproperties_feature(starts_2,sw).


has_gemproperties(character_3,loops_3).
has_gemproperties_count(loops_3,1).
has_gemproperties(character_3,arcs_3).
has_gemproperties_count(arcs_3,3).
has_gemproperties(character_3,junctions_3).
has_gemproperties_count(junctions_3,2).
has_gemproperties(character_3,terminals_3).
has_gemproperties_count(terminals_3,2).
has_dirproperties(character_3,ends_3).
has_dirproperties_feature(ends_3,se).


has_gemproperties(character_4,loops_4).
has_gemproperties_count(loops_4,1).
has_gemproperties(character_4,arcs_4).
has_gemproperties_count(arcs_4,3).
has_gemproperties(character_4,junctions_4).
has_gemproperties_count(junctions_4,3).
has_gemproperties(character_4,terminals_4).
has_gemproperties_count(terminals_4,2).
has_dirproperties(character_4,starts_4).
has_dirproperties_feature(starts_4,nw).
has_dirproperties(character_4,ends_4).
has_dirproperties_feature(ends_4,se).


has_gemproperties(character_5,loops_5).
has_gemproperties_count(loops_5,0).
has_gemproperties(character_5,arcs_5).
has_gemproperties_count(arcs_5,3).
has_gemproperties(character_5,junctions_5).
has_gemproperties_count(junctions_5,1).
has_gemproperties(character_5,terminals_5).
has_gemproperties_count(terminals_5,2).
has_dirproperties(character_5,starts_5).
has_dirproperties_feature(starts_5,nw).
has_dirproperties(character_5,ends_5).
has_dirproperties_feature(ends_5,se).


has_gemproperties(character_6,loops_6).
has_gemproperties_count(loops_6,1).
has_gemproperties(character_6,arcs_6).
has_gemproperties_count(arcs_6,2).
has_gemproperties(character_6,junctions_6).
has_gemproperties_count(junctions_6,1).
has_gemproperties(character_6,terminals_6).
has_gemproperties_count(terminals_6,1).
has_dirproperties(character_6,ends_6).
has_dirproperties_feature(ends_6,se).


has_gemproperties(character_7,loops_7).
has_gemproperties_count(loops_7,1).
has_gemproperties(character_7,arcs_7).
has_gemproperties_count(arcs_7,2).
has_gemproperties(character_7,junctions_7).
has_gemproperties_count(junctions_7,1).
has_gemproperties(character_7,terminals_7).
has_gemproperties_count(terminals_7,2).
has_dirproperties(character_7,starts_7).
has_dirproperties_feature(starts_7,nw).
has_dirproperties(character_7,ends_7).
has_dirproperties_feature(ends_7,se).


has_gemproperties(character_8,loops_8).
has_gemproperties_count(loops_8,1).
has_gemproperties(character_8,arcs_8).
has_gemproperties_count(arcs_8,2).
has_gemproperties(character_8,junctions_8).
has_gemproperties_count(junctions_8,1).
has_gemproperties(character_8,terminals_8).
has_gemproperties_count(terminals_8,1).
has_dirproperties(character_8,ends_8).
has_dirproperties_feature(ends_8,se).


has_gemproperties(character_9,loops_9).
has_gemproperties_count(loops_9,3).
has_gemproperties(character_9,arcs_9).
has_gemproperties_count(arcs_9,4).
has_gemproperties(character_9,junctions_9).
has_gemproperties_count(junctions_9,3).
has_gemproperties(character_9,terminals_9).
has_gemproperties_count(terminals_9,1).
has_dirproperties(character_9,ends_9).
has_dirproperties_feature(ends_9,se).


has_gemproperties(character_10,loops_10).
has_gemproperties_count(loops_10,4).
has_gemproperties(character_10,arcs_10).
has_gemproperties_count(arcs_10,4).
has_gemproperties(character_10,junctions_10).
has_gemproperties_count(junctions_10,4).
has_gemproperties(character_10,terminals_10).
has_gemproperties_count(terminals_10,0).


has_gemproperties(character_11,loops_11).
has_gemproperties_count(loops_11,3).
has_gemproperties(character_11,arcs_11).
has_gemproperties_count(arcs_11,3).
has_gemproperties(character_11,junctions_11).
has_gemproperties_count(junctions_11,4).
has_gemproperties(character_11,terminals_11).
has_gemproperties_count(terminals_11,0).


has_gemproperties(character_12,loops_12).
has_gemproperties_count(loops_12,1).
has_gemproperties(character_12,arcs_12).
has_gemproperties_count(arcs_12,2).
has_gemproperties(character_12,junctions_12).
has_gemproperties_count(junctions_12,1).
has_gemproperties(character_12,terminals_12).
has_gemproperties_count(terminals_12,2).
has_dirproperties(character_12,starts_12).
has_dirproperties_feature(starts_12,sw).
has_dirproperties(character_12,ends_12).
has_dirproperties_feature(ends_12,se).


has_gemproperties(character_13,loops_13).
has_gemproperties_count(loops_13,1).
has_gemproperties(character_13,arcs_13).
has_gemproperties_count(arcs_13,1).
has_gemproperties(character_13,junctions_13).
has_gemproperties_count(junctions_13,1).
has_gemproperties(character_13,terminals_13).
has_gemproperties_count(terminals_13,2).
has_dirproperties(character_13,starts_13).
has_dirproperties_feature(starts_13,nw).
has_dirproperties(character_13,ends_13).
has_dirproperties_feature(ends_13,se).


has_gemproperties(character_14,loops_14).
has_gemproperties_count(loops_14,1).
has_gemproperties(character_14,arcs_14).
has_gemproperties_count(arcs_14,1).
has_gemproperties(character_14,junctions_14).
has_gemproperties_count(junctions_14,1).
has_gemproperties(character_14,terminals_14).
has_gemproperties_count(terminals_14,2).
has_dirproperties(character_14,starts_14).
has_dirproperties_feature(starts_14,sw).
has_dirproperties(character_14,ends_14).
has_dirproperties_feature(ends_14,ne).


has_gemproperties(character_15,loops_15).
has_gemproperties_count(loops_15,0).
has_gemproperties(character_15,arcs_15).
has_gemproperties_count(arcs_15,1).
has_gemproperties(character_15,junctions_15).
has_gemproperties_count(junctions_15,2).
has_gemproperties(character_15,terminals_15).
has_gemproperties_count(terminals_15,2).
has_dirproperties(character_15,starts_15).
has_dirproperties_feature(starts_15,sw).
has_dirproperties(character_15,ends_15).
has_dirproperties_feature(ends_15,ne).


has_gemproperties(character_16,loops_16).
has_gemproperties_count(loops_16,0).
has_gemproperties(character_16,arcs_16).
has_gemproperties_count(arcs_16,1).
has_gemproperties(character_16,junctions_16).
has_gemproperties_count(junctions_16,0).
has_gemproperties(character_16,terminals_16).
has_gemproperties_count(terminals_16,2).
has_dirproperties(character_16,starts_16).
has_dirproperties_feature(starts_16,sw).
has_dirproperties(character_16,ends_16).
has_dirproperties_feature(ends_16,ne).


has_gemproperties(character_17,loops_17).
has_gemproperties_count(loops_17,0).
has_gemproperties(character_17,arcs_17).
has_gemproperties_count(arcs_17,1).
has_gemproperties(character_17,junctions_17).
has_gemproperties_count(junctions_17,2).
has_gemproperties(character_17,terminals_17).
has_gemproperties_count(terminals_17,2).
has_dirproperties(character_17,starts_17).
has_dirproperties_feature(starts_17,nw).
has_dirproperties(character_17,ends_17).
has_dirproperties_feature(ends_17,ne).


example(alphabet(character_0),-1).
example(alphabet(character_1),-1).
example(alphabet(character_2),-1).
example(alphabet(character_3),-1).
example(alphabet(character_4),-1).
example(alphabet(character_5),-1).
example(alphabet(character_6),-1).
example(alphabet(character_7),-1).
example(alphabet(character_8),-1).
example(alphabet(character_9),-1).
example(alphabet(character_10),-1).
example(alphabet(character_11),-1).
example(alphabet(character_12),-1).
example(alphabet(character_13),-1).
example(alphabet(character_14),-1).
example(alphabet(character_15),-1).
example(alphabet(character_16),-1).
example(alphabet(character_17),-1).
