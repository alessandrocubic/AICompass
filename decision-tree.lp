
%%% scope
constitutiveRule(t1_1,ai_scope).
applicable(t1_1,ai_scope).

constitutiveRule(t1_2,non(ai_scope)).
applicable(t1_2,non(ai_scope)) :- 
    defeasible(military).

constitutiveRule(t1_3,non(ai_scope)).
applicable(t1_3,non(ai_scope)) :- 
    defeasible(third_country).

constitutiveRule(t1_4,non(ai_scope)).
applicable(t1_4,non(ai_scope)) :- 
    defeasible(scientific_rd).

constitutiveRule(t1_5,non(ai_scope)).
applicable(t1_5,non(ai_scope)) :-
    defeasible(internal_use).

superior((t1_2;t1_3;t1_4),t1_1).

hasSource(
    t1_2,article2_3;
    t1_3,article2_4;
    t1_4,article2_6
    % mettere t1_5?  
).

%%% AI system
constitutiveRule(t2_1,ai_system).
applicable(t2_1,ai_system).

constitutiveRule(t2_2,non(ai_system)).
applicable(t2_2,non(ai_system)) :-
    defeasible(
        traditional_software_systems;
        linear_regression_methods;
        logistic_regression_methods;
        machine_learning_approximating;
        machine_learning_optimizing;
        machine_learning_maintainig_performance;
        machine_learning_models_for_prediction;
        basic_data_processing;
        basic_data_descripting;
        basic_data_hypotesis_test;
        basic_data_visualization;
        classical_heuristics;
        trial_and_error;
        pattern_recognition;
        data_processing_learning;
        basic_statistical_learning;
        static_estimation_system).

superior(t2_2,t2_1).
constitutiveRule(t2_3,ai_system).
applicable(t2_3,ai_system) :-
    defeasible(
        autonomous;
        adaptive;
        intended_purpose;
        inferencing;
        influence_physical_or_virtual_environments;
        one_module).


superior(t2_3,t2_2).

hasSource(
    (t2_2;t2_3),(article3_1;recital12;guideline13;guideline42;guideline43;guideline46;guideline47;guideline48;guideline49;guideline50;guideline51)
  
).

%% New guidelines HOTFIX

constitutiveRule(t2_4,ai_system).
applicable(t2_4,ai_system) :-
    defeasible(
        deep_learning;
        supervised_learning;
        natural_language_processing;
        unsupervised_learning;
        self_supervised_learning;
        reinforcement_learning;
        logic_and_knowledge_approach).


superior(t2_4,t2_2).
hasSource(
    (t2_4,t2_2),(article3_1;recital12;guideline38;guideline33;guideline25;guideline27;guideline52;guideline39)
).


hasSource(
    (t2_2;t2_3;t2_4),(article3_1;recital12;)
).

%% general purpose AI t10

constitutiveRule(t10,non(general_purpose_ai)).
applicable(t10,non(general_purpose_ai)).

constitutiveRule(t10_1,general_purpose_ai).
applicable(t10_1,general_purpose_ai) :-
    defeasible(ai_scope),
    defeasible(ai_system),
    defeasible(generative;
        natural_language_processing;
        supervised_learning;
        reinforcement_learning;
        unsupervised_learning;
        self_supervised_learning;
        deep_learning;
        ).

constitutiveRule(t10_6,general_purpose_ai).
applicable(t10_6,general_purpose_ai) :-
    defeasible(ai_scope),
    defeasible(ai_system),
    defeasible(multiple_tasks),
    defeasible(large_data).

superior((t10_1;t10_6),t10).

prescriptiveRule(t10_2,(article53_1;annex_xi_sec1;annex_xii)).
applicable(t10_2,(article53_1;annex_xi_sec1;annex_xii)) :-
    defeasible(general_purpose_ai).

permissiveRule(t10_3,non(article53_1;annex_xi_sec1;annex_xii)).
applicable(t10_3,non(article53_1;annex_xi_sec1;annex_xii)) :-
    defeasible(open_source),
    defeasible(general_purpose_ai).

superior(t10_3,t10_2).

prescriptiveRule(t10_4,recital104).
applicable(t10_4,recital104) :-
    defeasible(general_purpose_ai),
    defeasible(open_source).

permissiveRule(t10_5,non(recital104)).
applicable(t10_5,non(recital104)) :-
    defeasible(general_purpose_ai),
    defeasible(open_source),
    defeasible(substancial_info).

superior(t10_5,t10_4).

hasSource(
    t10_1,(article3_63;recital97);
    t10_2,(article53_1;annex_xi_sec1;annex_xii)
).

%%%%%%  FLOP, Task 22

constitutiveRule(t22_1,systemic_risk).
applicable(t22_1,systemic_risk) :-
    defeasible(general_purpose_ai),
    defeasible(large_flop). 

prescriptiveRule(t22,(article51_2;annex_xi_sec2;article55_1)).
applicable(t22,(article51_2;annex_xi_sec2;article55_1)) :-
    % defeasible(ai_system),
    % defeasible(ai_scope),
    defeasible(general_purpose_ai),
    % flop(Flop), Flop >= 10**25.
    defeasible(large_flop). 

hasSource(
    t22,(article51_2;annex_xi_sec2;article55_1)
).


%%% banned uses 

constitutiveRule(t25,banned_use).
applicable(t25,banned_use) :- 
    defeasible(
        realtime_biometric;
        criminal_offence_prediction;
        emo_inferences_edu_workplace;
        biometric_infer_personal
        ).

prescriptiveRule(t25o,article5).
applicable(t25o,article5) :- 
    defeasible(ai_scope),
    defeasible(ai_system),
    defeasible(untarget_scraping),
    defeasible(banned_use).

hasSource((t25;t25o),
          (article5;article5_1_d;article5_1_e;article5_1_f;article5_1_g;article5_1_h)).

constitutiveRule(t27,non(banned_use)).
applicable(t27,non(banned_use)) :-
    defeasible(criminal_offence_prediction),
    defeasible(previous_offences).

% article5_1_e.

constitutiveRule(t29,non(banned_use)).
applicable(t29,non(banned_use)) :-
    defeasible(emo_inferences_edu_workplace), 
    defeasible(med_safety_reasons).

% article5_1_f.

constitutiveRule(t31,non(banned_use)).
applicable(t31,non(banned_use)) :- 
    defeasible(biometric_infer_personal),
    defeasible(lawfully_acquired).

% article5_1_g.

constitutiveRule(t32,non(banned_use)).
applicable(t32,non(banned_use)) :-
    defeasible(realtime_biometric),
    defeasible(locate_crime_victim;preventing_treats;identifying_crime_suspects),
    defeasible(auth_judicial_authority).

superior((t27;t29;t31;t32),t25).

hasSource(t32,(article5_1_h;article5_1_h_i;article5_1_h_ii;article5_1_h_iii)).

%article5_3

%%% contesto high-risk

constitutiveRule(t40,high_risk).
applicable(t40,high_risk) :- 
    defeasible(high_risk_annex3;high_risk_article6).

%% Annex 3
constitutiveRule(t40_a3,high_risk_annex3).
applicable(t40_a3,high_risk_annex3) :-
    defeasible(ai_scope),
    defeasible(ai_system),
    defeasible(biometric_sys;
        critical_infra;
        edu_training;
        employment_managment_self;
        access_private_public_ser;
        law_enforcement;
        migration_asylum_border;
        adm_justice_and_dem_proc
        ).

prescriptiveRule(t40_o,
    (article8;article9;article10;article11;article12;article13;article14;
    article15;article16;article17;article18;article19;article20;article21;
    article22;article60_4;annex_iv;annex_v;annex_vii;annex_viii)).
applicable(t40_o,
    (article8;article9;article10;article11;article12;article13;article14;
    article15;article16;article17;article18;article19;article20;article21;
    article22;article60_4;annex_iv;annex_v;annex_vii;annex_viii)) :- 
    defeasible(high_risk_annex3).

hasSource(t40_a3,annex_iii).

% constitutiveRule(t40_e,non(high_risk)).
% applicable(t40_e,non(high_risk)) :-
%     defeasible(irrelevant_task).

%%% annex_viii?
permissiveRule(t40_e,
    non(article8;article9;article10;article11;article12;article13;article14;
    article15;article16;article17;article18;article19;article20;article21;
    article22;annex_iv;annex_v;annex_vii)).
applicable(t40_e,
    non(article8;article9;article10;article11;article12;article13;article14;
    article15;article16;article17;article18;article19;article20;article21;
    article22;annex_iv;annex_v;annex_vii)) :- 
    defeasible(irrelevant_task).

%%% 
prescriptiveRule(t40_eo,(article60_4;article49_2;annex_viii)). 
applicable(t40_eo,(article6_4;article49_2;annex_viii)) :- 
    defeasible(irrelevant_task).

superior(t40_e,t40_o).

%% DOBBIAMO AGGIUNGERE annex_viii
prescriptiveRule(t40_ee,
    (article8;article9;article10;article11;article12;article13;article14;
    article15;article16;article17;article18;article19;article20;article21;
    article22;article60_4;annex_iv;annex_v;annex_vii;annex_viii)).
applicable(t40_ee,
    (article8;article9;article10;article11;article12;article13;article14;
    article15;article16;article17;article18;article19;article20;article21;
    article22;article60_4;annex_iv;annex_v;annex_vii;annex_viii)) :- 
    defeasible(profiling).

superior(t40_ee,t40_e).

%%%%%%%%%%%%%%%%%%%
% rimanevano tutti


%% rules for biometric systems (high-risk)

constitutiveRule(t40_1,biometric_sys).
applicable(t40_1,biometric_sys) :-
    defeasible(remote_biometric_id_sys;
        biometric_categorisation;
        emotion_recognition).

constitutiveRule(t40_1_e,non(biometric_sys)).
applicable(t40_1_e,non(biometric_sys)) :- 
    defeasible(confirm_identity).

hasSource((t40_1;t40_1_e),recital54).

prescriptiveRule(t40_1_o,(article49_4;annex_viii)).
applicable(t40_1_o,(article49_4;annex_viii)) :-
    defeasible(biometric_sys).

superior(t40_1_e,t40_1).

%%%%%

constitutiveRule(t40_3,edu_training).
applicable(t40_3,edu_training) :- 
    defeasible(access_edu_training;
        evaluation_edu_training;
        assessment_individuals;
        monitor_detect_behavior
    ).

constitutiveRule(t40_4,employment_managment_self).
applicable(t40_4,employment_managment_self) :- 
    defeasible(recruit_analyse_filter;
        evaluation_performance;
        monitor_promotion;
        contractual_relation
    ).

constitutiveRule(t40_5,access_private_public_ser).
applicable(t40_5,access_private_public_ser) :- 
    defeasible(elegibility_cand;
        manage_publ_serv;
        evaluate_credit_worthness;
        assessment_insurance_pricing;
        call_dispach_prority
    ).

constitutiveRule(t40_5_e,non(access_private_public_ser)).
applicable(t40_5_e,non(access_private_public_ser)) :-
    defeasible(financial_fraud).

superior(t40_5_e,t40_5).

constitutiveRule(t40_5,law_enforcement).
applicable(t40_5,law_enforcement) :- 
    defeasible(risk_assessment_victim_and_offence;
        poly_investigation_and_evidence;
        profiling_criminal
    ).

constitutiveRule(t40_7,migration_asylum_border).
applicable(t40_7,migration_asylum_border) :- 
    defeasible(migration_risk;
        exam_visa_permit_status;
        detecting_reco_id
    ).

constitutiveRule(t40_7_e,non(migration_asylum_border)).
applicable(t40_7_e,non(migration_asylum_border)) :- 
    defeasible(verification_trav_doc).

superior(t40_7_e,t40_7).

constitutiveRule(t40_8,adm_justice_and_dem_proc).
applicable(t40_8,adm_justice_and_dem_proc) :- 
    defeasible(research_interpretation_fact_law;
        law_disp_resolution;
        election_outcome
    ).

constitutiveRule(t40_8_e,non(adm_justice_and_dem_proc)).
applicable(t40_8_e,non(adm_justice_and_dem_proc)) :- 
    defeasible(organize_campain).

superior(t40_8_e,t40_8).

prescriptiveRule(t40_8,
    (article43_2;article49_1;annex_vi;annex_viii)).
applicable(t40_8,
    (article43_2;article49_1;annex_vi;annex_viii)) :- 
    defeasible(edu_training;
        employment_managment_self;
        access_private_public_ser;
        law_enforcement;
        migration_asylum_border;
        adm_justice_and_dem_proc
        ).

prescriptiveRule(t40_9,(article60_4;article61;annex_ix)).
applicable(t40_9,(article60_4;article61;annex_ix)) :- 
    defeasible(high_risk_annex3),
    defeasible(real_world).

prescriptiveRule(t40_10,
    (article60_4_c;article49_4_d;annex_viii_seca;
    annex_viii_secb;annex_viii_secc;annex_ix_points_1_2_3_5)).
applicable(t40_10,(article60_4_c;article49_4_d;annex_viii_seca;
    annex_viii_secb;annex_viii_secc;annex_ix_points_1_2_3_5)) :-
    defeasible(high_risk_annex3),
    defeasible(real_world),
    defeasible(biometric_sys;
        law_enforcement;
        migration_asylum_border).

%%%% articolo 6 
constitutiveRule(t38_0,high_risk_article6).
applicable(t38_0,high_risk_article6) :- 
    defeasible(high_risk_article6_1;high_risk_article6_2).

constitutiveRule(t38,high_risk_article6_1).
applicable(t38,high_risk_article6_1) :- 
    defeasible(third_part_assessment);
    defeasible(
        machinery;
        safety_toys;
        craft;
        lifts;
        protective_explosive;
        radio;
        pressure_eqp;
        cableway;
        protective_eqp
    ).

prescriptiveRule(t38_o,
    (article8;article9;article10;article11;article12;article13;article14;
    article15;article16;article17;article18;article19;article20;article21;
    article22;article49_1;article72_4;annex_iv;annex_v;annex_vii)).
applicable(t38_o,
    (article8;article9;article10;article11;article12;article13;article14;
    article15;article16;article17;article18;article19;article20;article21;
    article22;article49_1;article72_4;annex_iv;annex_v;annex_vii)) :- 
    defeasible(high_risk_article6_1).


constitutiveRule(t38_1,high_risk_article6_1).
applicable(t38_1,high_risk_article6_1) :- 
    defeasible(third_part_assessment);
    defeasible(medical_regulation);
    defeasible(medical_purpose).


constitutiveRule(t38_2,medical_device).
applicable(t38_2,medical_device) :- 
    defeasible(medical_regulation);
    defeasible(medical_purpose).
    
    
prescriptiveRule(t38_o,
    (article8;article9;article10;article11;article12;article13;article14;
    article15;article16;article17;article18;article19;article20;article21;
    article22;article49_1;article72_4;annex_iv;annex_v;annex_vii)).
applicable(t38_o,
    (article8;article9;article10;article11;article12;article13;article14;
    article15;article16;article17;article18;article19;article20;article21;
    article22;article49_1;article72_4;annex_iv;annex_v;annex_vii)) :- 
    defeasible(high_risk_article6_1).


constitutiveRule(t39,high_risk_article6_2).
applicable(t39,high_risk_article6_2) :-
    defeasible(
    	civil_aviation;
    	two_three_vehicles_quadr;
    	agri_forest_vehicles;
    	marine_eqp;
    	rail_sys;
    	motor_vehicle
    ).

prescriptiveRule(t39_o,
    (article102, article103, article104, article105, article106, article107, 
    article108, article109, article49)).
applicable(t39_o,
    (article102, article103, article104, article105, article106, article107, 
    article108, article109, article49)) :-
    defeasible(high_risk_article6_2).


%%% restrizioni obblighi high_risk

prescriptiveRule(t67,article10_6).
applicable(t67,article10_6) :- 
    defeasible(high_risk),
    defeasible(training_AI_mod).

strongConflict(article10_6,article10).

prescriptiveRule(t68,article11_1).
applicable(t68,article11_1) :-
    defeasible(high_risk),
    defeasible(sme).

strongConflict(article11_1,annex_iv).

superior((t67;t68),(t40_o;t40_ee;t38_o)).

%% Limited risk 

constitutiveRule(t66,limited_risk).
applicable(t66,limited_risk) :- 
    defeasible(interaction_people;syntetic_content).

prescriptiveRule(t46,article50_1).
applicable(t46,article50_1) :- 
    defeasible(interaction_people).

prescriptiveRule(t47,article50_2).
applicable(t47,article50_2) :- 
    defeasible(syntetic_content).

permissiveRule(t47_2,non(article50_2)).
applicable(t47_2,non(article50_2)) :- 
    defeasible(just_editing).

superior(t47_2,t47).
