%% vocabulary scope
atom(ai_scope).
atom(military).
atom(third_country).
atom(scientific_rd).
atom(internal_use).

%% vocabulary AI system
atom(ai_system).
atom(rule_based).
atom(statistical_model).
atom(automation_and_scripting).
atom(control_system).
atom(static_algorithm).
atom(embedded_system).
atom(simulation_and_modelling).
atom(basic_recommendation_system).
atom(data_processing_tool).
atom(traditional_software_application).
atom(autonomous).
atom(adaptive).
atom(one_module).


%% New regulations NON AI Systems
atom(traditional_software_systems).
atom(linear_regression_methods).  %%
atom(logistic_regression_methods).  
atom(machine_learning_approximating).  
atom(machine_learning_optimizing).  
atom(machine_learning_maintainig_performance).  
atom(machine_learning_models_for_prediction).  
atom(basic_data_processing).  
atom(basic_data_descripting).  
atom(basic_data_hypotesis_test).  
atom(basic_data_visualization).  
atom(classical_heuristics).  
atom(trial_and_error).
atom(pattern_recognition).  
atom(data_processing_learning).  
atom(basic_statistical_learning).  
atom(static_estimation_system).
atom(logic_and_knowledge_approach). %% Not sure

%% New regulations AI Systems
atom(deep_learning).
atom(supervised_learning). %%


%% vocabulary GPAI
atom(general_purpose_ai).
atom(generative;
    natural_language_processing;
    reinforcement_learning;
    unsupervised_learning;
    self_supervised_learning;
    speech_analysys;
    multimodal;
    other_gpai;
    open_source;
    substancial_info
    ).
atom(multiple_tasks).
atom(large_data).
atom(large_flop).
atom(systemic_risk).

%% vocabulary banned
atom(
    banned_use;
    realtime_biometric;
    criminal_offence_prediction;
    emotion_inference;
    biometric_personal_info;
    previous_offences;
    untarget_scraping;
    emo_inferences_edu_workplace;
    med_safety_reasons;
    lawfully_acquired;
    locate_crime_victim;
    auth_judicial_authority;
    preventing_treats;
    identifying_crime_suspects  
).

%% vocabulary context high-risk (Annex 3)

atom(
    high_risk_annex3;
    high_risk_article6;
    high_risk_article6_1;
    high_risk_article6_2;
    high_risk;
    biometric_sys;
    critical_infra;
    edu_training;
    employment_managment_self;
    access_private_public_ser;
    law_enforcement;
    migration_asylum_border;
    adm_justice_and_dem_proc;
    irrelevant_task;
    profiling;
    remote_biometric_id_sys;
    biometric_categorisation;
    emotion_recognition;
    confirm_identity;
    access_edu_training;
    evaluation_edu_training;
    assessment_individuals;
    monitor_detect_behavior;
    recruit_analyse_filter;
    evaluation_performance;
    monitor_promotion;
    contractual_relation;
    elegibility_cand;
    manage_publ_serv;
    evaluate_credit_worthness;
    assessment_insurance_pricing;
    call_dispach_prority;
    financial_fraud;
    poly_investigation_and_evidence;
    profiling_criminal;
    exam_visa_permit_status;
    detecting_reco_id;
    verification_trav_doc;
    research_interpretation_fact_law;
    law_disp_resolution;
    election_outcome;
    organize_campain;
    real_world
).

%% vocabulary context high-risk articolo 6

atom(
    third_part_assessment;
    machinery;
    safety_toys;
    creft;
    lifts;
    protective_explosive;
    radio;
    pressure_eqp;
    cableway;
    protective_eqp;
    civil_aviation;
    two_three_vehicles_quadr;
    agri_forest_vehicles;
    marine_eqp;
    rail_sys;
    motor_vehicle
).

%% vocabolario restrizioni high-risk
atom(
    training_AI_mod;
    sme
).

%% vocabolario Limited Risk
atom(
    limited_risk;
    interaction_people;
    syntetic_content;
    just_editing
).

%% vocabolario regulations

atom(
    medical_device;
    medical_purpose;
    medical_regulation
).