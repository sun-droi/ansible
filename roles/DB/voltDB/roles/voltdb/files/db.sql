CREATE ROLE admin WITH admin;CREATE ROLE dbuser WITH allproc;CREATE ROLE apps;
CREATE TABLE tb_360_apk_label  (id INTEGER NOT NULL, package_name VARCHAR(100) NOT NULL, label_name VARCHAR(200) NOT NULL, label_id INTEGER NOT NULL, PRIMARY KEY(id));PARTITION TABLE tb_360_apk_label ON COLUMN id;
CREATE TABLE tb_360_compare_apk_res  (id INTEGER NOT NULL, c_360_apk_id INTEGER , c_360_apk_name VARCHAR(100) NOT NULL, c_360_package_name VARCHAR(100) NOT NULL, c_360_version_code INTEGER NOT NULL, c_360_version_name VARCHAR(50) NOT NULL, c_360_download_url VARCHAR(200) NOT NULL, is_new INTEGER , zy_apk_id INTEGER , zy_version_code INTEGER NOT NULL, zy_version_name VARCHAR(50) NOT NULL, zy_from VARCHAR(50) , create_time TIMESTAMP NOT NULL, PRIMARY KEY(id));PARTITION TABLE tb_360_compare_apk_res ON COLUMN id;
CREATE TABLE ad_qrscan_stats  (as_id INTEGER NOT NULL, as_origin VARCHAR(10) NOT NULL, create_time TIMESTAMP NOT NULL, PRIMARY KEY(as_id));PARTITION TABLE ad_qrscan_stats ON COLUMN as_id;
CREATE TABLE apk_html_from_360  (id INTEGER NOT NULL, html VARCHAR(65535) NOT NULL, PRIMARY KEY(id));PARTITION TABLE apk_html_from_360 ON COLUMN id;
CREATE TABLE apk_info_from_360  (id INTEGER NOT NULL, app_id_360 INTEGER , apk_name VARCHAR(100) NOT NULL, pname VARCHAR(100) NOT NULL, version_code INTEGER NOT NULL, version_name VARCHAR(50) NOT NULL, score FLOAT NOT NULL, description VARCHAR(1000) , company VARCHAR(50) , download_url VARCHAR(200) NOT NULL, icon VARCHAR(200) NOT NULL, labels VARCHAR(1024) NOT NULL, imgs VARCHAR(2048) NOT NULL, str_json VARCHAR(65535) NOT NULL, do_type INTEGER , PRIMARY KEY(id));PARTITION TABLE apk_info_from_360 ON COLUMN id;
CREATE TABLE apk_info_from_baidu  (id INTEGER NOT NULL, app_id_baidu BIGINT , apk_name VARCHAR(100) NOT NULL, pname VARCHAR(100) NOT NULL, version_name VARCHAR(50) NOT NULL, version_code INTEGER NOT NULL, description VARCHAR(3000) , company VARCHAR(50) , download_url VARCHAR(2000) NOT NULL, icon VARCHAR(200) NOT NULL, imgs VARCHAR(2048) , PRIMARY KEY(id));PARTITION TABLE apk_info_from_baidu ON COLUMN id;
CREATE TABLE app_all  (id INTEGER NOT NULL, appno VARCHAR(32) , typeid INTEGER , flag INTEGER , PRIMARY KEY(id));PARTITION TABLE app_all ON COLUMN id;
CREATE TABLE bind_uuid_reward  (id INTEGER NOT NULL, uuid VARCHAR(40) NOT NULL, dl_id VARCHAR(40) NOT NULL, apk_id VARCHAR(10) , PRIMARY KEY(id));PARTITION TABLE bind_uuid_reward ON COLUMN id;
CREATE TABLE charge_success_mob  (mobile VARCHAR(24) );
CREATE TABLE imsi_download_summary  (id INTEGER NOT NULL, imsi VARCHAR(30) NOT NULL, dt_f VARCHAR(10) NOT NULL, dt_l VARCHAR(10) NOT NULL, cnt_d INTEGER NOT NULL, PRIMARY KEY(id));PARTITION TABLE imsi_download_summary ON COLUMN id;
CREATE TABLE imsi_judge_table  (id INTEGER NOT NULL, imsi VARCHAR(30) , dt_f VARCHAR(30) , PRIMARY KEY(id));PARTITION TABLE imsi_judge_table ON COLUMN id;
CREATE TABLE oz_360_label_to_zy  (id INTEGER NOT NULL, tag_name VARCHAR(20) NOT NULL, label_id INTEGER NOT NULL, PRIMARY KEY(id));PARTITION TABLE oz_360_label_to_zy ON COLUMN id;
CREATE TABLE oz_activity  (acti_id INTEGER NOT NULL, acti_name VARCHAR(100) NOT NULL, acti_image_url VARCHAR(200) NOT NULL, description VARCHAR(1000) , integral INTEGER , acti_url VARCHAR(200) NOT NULL, is_show INTEGER , start_time TIMESTAMP NOT NULL, end_time TIMESTAMP NOT NULL, create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, PRIMARY KEY(acti_id));PARTITION TABLE oz_activity ON COLUMN acti_id;
CREATE TABLE oz_activity_module  (module_id INTEGER NOT NULL, module_name VARCHAR(50) NOT NULL, create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, PRIMARY KEY(module_id));PARTITION TABLE oz_activity_module ON COLUMN module_id;
CREATE TABLE oz_ad  (ad_id INTEGER NOT NULL, ad_topic_id INTEGER NOT NULL, ad_type INTEGER NOT NULL, location VARCHAR(10) NOT NULL, create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, status INTEGER NOT NULL, PRIMARY KEY(ad_id));PARTITION TABLE oz_ad ON COLUMN ad_id;
CREATE TABLE oz_ad_access  (id INTEGER NOT NULL, channel_id VARCHAR(50) NOT NULL, ad_percent VARCHAR(50) NOT NULL, ad_switch INTEGER , create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, PRIMARY KEY(id));PARTITION TABLE oz_ad_access ON COLUMN id;
CREATE TABLE oz_ad_bidding  (ad_apk_id INTEGER NOT NULL, apk_id INTEGER NOT NULL, apk_name VARCHAR(100) NOT NULL, package_name VARCHAR(100) NOT NULL, icon_url VARCHAR(200) NOT NULL, company VARCHAR(50) , zone_id INTEGER NOT NULL, status INTEGER NOT NULL, create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, PRIMARY KEY(ad_apk_id));PARTITION TABLE oz_ad_bidding ON COLUMN ad_apk_id;
CREATE TABLE oz_api_version  (api_code INTEGER NOT NULL, sdk_version VARCHAR(255) , create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, PRIMARY KEY(api_code));PARTITION TABLE oz_api_version ON COLUMN api_code;
CREATE TABLE oz_apk_area  (apk_id INTEGER NOT NULL, area_id INTEGER NOT NULL, type INTEGER NOT NULL, PRIMARY KEY(apk_id, area_id));PARTITION TABLE oz_apk_area ON COLUMN apk_id;
CREATE TABLE oz_apk_category  (category_id INTEGER NOT NULL, apk_id INTEGER NOT NULL, PRIMARY KEY(category_id, apk_id));PARTITION TABLE oz_apk_category ON COLUMN category_id;
CREATE TABLE oz_apk_category_uc  (apk_id INTEGER NOT NULL, game_type INTEGER NOT NULL, game_category INTEGER NOT NULL, PRIMARY KEY(apk_id, game_category, game_type));PARTITION TABLE oz_apk_category_uc ON COLUMN apk_id;
CREATE TABLE oz_apk_corner  (apk_id INTEGER NOT NULL, corner_id INTEGER NOT NULL, PRIMARY KEY(corner_id, apk_id));PARTITION TABLE oz_apk_corner ON COLUMN apk_id;
CREATE TABLE oz_apk_from_360  (apk_id INTEGER NOT NULL, apk_name VARCHAR(100) NOT NULL, version_code INTEGER NOT NULL, version_name VARCHAR(50) NOT NULL, package_name VARCHAR(100) NOT NULL, file_name VARCHAR(100) NOT NULL, create_time TIMESTAMP NOT NULL, apk_id_from_360 INTEGER , PRIMARY KEY(apk_id));PARTITION TABLE oz_apk_from_360 ON COLUMN apk_id;
CREATE TABLE oz_apk_gift_code  (code_id INTEGER NOT NULL, number_id INTEGER NOT NULL, apk_id INTEGER NOT NULL, gift_code VARCHAR(50) NOT NULL, status INTEGER , modify_time TIMESTAMP , PRIMARY KEY(code_id));PARTITION TABLE oz_apk_gift_code ON COLUMN code_id;
CREATE TABLE oz_apk_gift_num  (number_id INTEGER NOT NULL, apk_id INTEGER NOT NULL, apk_name VARCHAR(20) NOT NULL, gift_num INTEGER NOT NULL, effect_time TIMESTAMP NOT NULL, failure_time TIMESTAMP NOT NULL, switch INTEGER , display INTEGER , PRIMARY KEY(number_id));PARTITION TABLE oz_apk_gift_num ON COLUMN number_id;
CREATE TABLE oz_apk_grade  (grade_id INTEGER NOT NULL, grade_name VARCHAR(10) NOT NULL, weight INTEGER NOT NULL, create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, PRIMARY KEY(grade_id));PARTITION TABLE oz_apk_grade ON COLUMN grade_id;
CREATE TABLE oz_apk_image  (apk_id INTEGER NOT NULL, image_id INTEGER NOT NULL, display_seq INTEGER NOT NULL, PRIMARY KEY(apk_id, image_id));PARTITION TABLE oz_apk_image ON COLUMN apk_id;
CREATE TABLE oz_apk_image_from_360  (apk_id INTEGER NOT NULL, image_id INTEGER NOT NULL, display_seq INTEGER NOT NULL, PRIMARY KEY(apk_id, image_id));PARTITION TABLE oz_apk_image_from_360 ON COLUMN apk_id;
CREATE TABLE oz_apk_label  (apk_id INTEGER NOT NULL, label_id INTEGER NOT NULL, main_label INTEGER NOT NULL, PRIMARY KEY(apk_id, label_id));PARTITION TABLE oz_apk_label ON COLUMN apk_id;
CREATE TABLE oz_apk_label_from_360  (apk_id INTEGER NOT NULL, label_id INTEGER NOT NULL, PRIMARY KEY(apk_id, label_id));PARTITION TABLE oz_apk_label_from_360 ON COLUMN apk_id;
CREATE TABLE oz_apk_operator  (apk_id INTEGER NOT NULL, oper_id INTEGER NOT NULL, PRIMARY KEY(apk_id, oper_id));PARTITION TABLE oz_apk_operator ON COLUMN apk_id;
CREATE TABLE oz_apk_patch  (patch_id INTEGER NOT NULL, apk_id INTEGER NOT NULL, apk_name VARCHAR(100) NOT NULL, patch_name VARCHAR(100) NOT NULL, patch_size INTEGER NOT NULL, package_name VARCHAR(100) NOT NULL, patch_path VARCHAR(200) , patch_url VARCHAR(200) , version_code INTEGER NOT NULL, old_version_code INTEGER NOT NULL, patch_md5 VARCHAR(40) NOT NULL, old_file_md5 VARCHAR(40) NOT NULL, status INTEGER NOT NULL, create_time TIMESTAMP NOT NULL, PRIMARY KEY(patch_id));PARTITION TABLE oz_apk_patch ON COLUMN patch_id;
CREATE TABLE oz_apk_provider  (apk_id INTEGER NOT NULL, provider_id INTEGER NOT NULL);PARTITION TABLE oz_apk_provider ON COLUMN apk_id;
CREATE TABLE oz_apk_sort  (apk_id INTEGER NOT NULL, downLoad_num INTEGER , PRIMARY KEY(apk_id));PARTITION TABLE oz_apk_sort ON COLUMN apk_id;
CREATE TABLE oz_apk_update_info  (id INTEGER NOT NULL, channel_id VARCHAR(50) NOT NULL, package_name VARCHAR(100) NOT NULL, policy INTEGER NOT NULL, title VARCHAR(100) NOT NULL, content VARCHAR(300) NOT NULL, current_ver INTEGER NOT NULL, client_ver INTEGER NOT NULL, md5 VARCHAR(40) NOT NULL, file_url VARCHAR(300) NOT NULL, description VARCHAR(300) , create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, self_update_switch INTEGER , self_update_time INTEGER , ori_update_num INTEGER , up_day INTEGER , sdk_api_ver VARCHAR(100) , file_type INTEGER NOT NULL, total_size VARCHAR(1048576) , PRIMARY KEY(channel_id, client_ver, id, package_name, current_ver));PARTITION TABLE oz_apk_update_info ON COLUMN id;
CREATE TABLE oz_area  (area_id INTEGER NOT NULL, area_name VARCHAR(50) NOT NULL, area_type INTEGER NOT NULL, PRIMARY KEY(area_id));PARTITION TABLE oz_area ON COLUMN area_id;
CREATE TABLE oz_assembly  (assembly_id INTEGER NOT NULL, assembly_name VARCHAR(100) NOT NULL, assembly_type INTEGER NOT NULL, description VARCHAR(100) , creator INTEGER NOT NULL, create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, display_sort INTEGER , url VARCHAR(255) , sort_flag INTEGER NOT NULL, ass_model_type INTEGER , assembly_style INTEGER , ass_icon_url VARCHAR(200) , PRIMARY KEY(assembly_id));PARTITION TABLE oz_assembly ON COLUMN assembly_id;
CREATE TABLE oz_assembly_apk  (id INTEGER NOT NULL, assembly_id INTEGER NOT NULL, res_id INTEGER NOT NULL, res_name VARCHAR(80) , res_type INTEGER NOT NULL, img_id INTEGER , down_now INTEGER NOT NULL, brief_title VARCHAR(100) , brief_words VARCHAR(200) , sequence INTEGER NOT NULL, web_url VARCHAR(500) , show_time INTEGER , rise_value INTEGER NOT NULL, PRIMARY KEY(id));PARTITION TABLE oz_assembly_apk ON COLUMN id;
CREATE TABLE oz_assembly_keyword  (id INTEGER NOT NULL, assembly_id INTEGER NOT NULL, ref_id INTEGER NOT NULL, sequence INTEGER NOT NULL, PRIMARY KEY(id));PARTITION TABLE oz_assembly_keyword ON COLUMN id;
CREATE TABLE oz_bidding_switch  (id INTEGER NOT NULL, c_switch VARCHAR(10) NOT NULL, c_percent INTEGER NOT NULL, PRIMARY KEY(id));PARTITION TABLE oz_bidding_switch ON COLUMN id;
CREATE TABLE oz_category  (category_id INTEGER NOT NULL, category_name VARCHAR(20) NOT NULL, category_pid INTEGER NOT NULL, category_brief VARCHAR(200) , category_banner1 VARCHAR(200) , category_banner2 VARCHAR(200) , create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, PRIMARY KEY(category_id));PARTITION TABLE oz_category ON COLUMN category_id;
CREATE TABLE oz_category_360  (category_id INTEGER NOT NULL, category_name VARCHAR(20) NOT NULL, category_pid INTEGER NOT NULL, category_brief VARCHAR(200) , category_banner1 VARCHAR(200) , category_banner2 VARCHAR(200) , create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL);PARTITION TABLE oz_category_360 ON COLUMN category_id;
CREATE TABLE oz_channel  (id INTEGER NOT NULL, channel_id VARCHAR(50) NOT NULL, channel_name VARCHAR(100) NOT NULL, channel_business VARCHAR(20) NOT NULL, description VARCHAR(500) NOT NULL, is_forced_up INTEGER , is_indie INTEGER , is_delete INTEGER NOT NULL, spread_time INTEGER , is_zero_flow INTEGER , zero_flow_time INTEGER , company_id VARCHAR(50) , PRIMARY KEY(id, channel_id));PARTITION TABLE oz_channel ON COLUMN id;
CREATE TABLE oz_channel_group_mapping  (type INTEGER , channel_id VARCHAR(40) , name VARCHAR(40) , PRIMARY KEY(channel_id));
CREATE TABLE oz_channel_relate  (channel_id VARCHAR(50) NOT NULL, relate_id INTEGER NOT NULL, create_time TIMESTAMP NOT NULL, type INTEGER NOT NULL, PRIMARY KEY(type, relate_id, channel_id));PARTITION TABLE oz_channel_relate ON COLUMN channel_id;
CREATE TABLE oz_channel_topic  (market_id VARCHAR(30) NOT NULL, pindao_id VARCHAR(20) NOT NULL, topic_id INTEGER NOT NULL, sequence INTEGER , PRIMARY KEY(topic_id, pindao_id, market_id));PARTITION TABLE oz_channel_topic ON COLUMN market_id;
CREATE TABLE oz_circle_config  (id INTEGER NOT NULL, version INTEGER NOT NULL, create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, PRIMARY KEY(id));PARTITION TABLE oz_circle_config ON COLUMN id;
CREATE TABLE oz_circle_info  (ref_id INTEGER NOT NULL, type INTEGER NOT NULL, apk_id INTEGER NOT NULL, img_id INTEGER NOT NULL, sequence INTEGER NOT NULL);PARTITION TABLE oz_circle_info ON COLUMN ref_id;
CREATE TABLE oz_color  (color_id INTEGER NOT NULL, color_name VARCHAR(20) NOT NULL, color_code VARCHAR(20) NOT NULL, PRIMARY KEY(color_id));PARTITION TABLE oz_color ON COLUMN color_id;
CREATE TABLE oz_comment  (comment_id INTEGER NOT NULL, openid VARCHAR(40) , apk_id INTEGER NOT NULL, version_code INTEGER NOT NULL, version_name VARCHAR(50) NOT NULL, package_name VARCHAR(100) NOT NULL, comment_content VARCHAR(1000) , stars INTEGER NOT NULL, uuid VARCHAR(40) , hsman VARCHAR(30) , hstype VARCHAR(30) , imsi VARCHAR(30) , imei VARCHAR(30) , ip VARCHAR(30) , lac VARCHAR(10) , mac VARCHAR(20) , channel_id VARCHAR(10) , create_time TIMESTAMP NOT NULL, PRIMARY KEY(comment_id, package_name, imsi, openid, version_code, uuid));PARTITION TABLE oz_comment ON COLUMN comment_id;
CREATE TABLE oz_company  (company_id VARCHAR(50) NOT NULL, company_name VARCHAR(100) , app_key VARCHAR(100) , create_time TIMESTAMP , modify_time TIMESTAMP , is_delete INTEGER NOT NULL, PRIMARY KEY(company_id));PARTITION TABLE oz_company ON COLUMN company_id;
CREATE TABLE oz_corner  (corner_id INTEGER NOT NULL, corner_name VARCHAR(100) NOT NULL, description VARCHAR(100) , img_id INTEGER NOT NULL, create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, PRIMARY KEY(corner_id));PARTITION TABLE oz_corner ON COLUMN corner_id;
CREATE TABLE oz_download_code  (apk_id INTEGER NOT NULL, download_url VARCHAR(500) NOT NULL, create_time INTEGER NOT NULL, version_code INTEGER NOT NULL, PRIMARY KEY(apk_id));PARTITION TABLE oz_download_code ON COLUMN apk_id;
CREATE TABLE oz_feedback  (feedback_id INTEGER NOT NULL, openid VARCHAR(40) , content VARCHAR(1000) , contact VARCHAR(30) , version_code INTEGER NOT NULL, hsman VARCHAR(30) , hstype VARCHAR(30) , imsi VARCHAR(30) , imei VARCHAR(30) , ip VARCHAR(30) , lac VARCHAR(10) , mac VARCHAR(20) , channel_id VARCHAR(10) , create_time TIMESTAMP NOT NULL, PRIMARY KEY(feedback_id));PARTITION TABLE oz_feedback ON COLUMN feedback_id;
CREATE TABLE oz_flow  (flow_id INTEGER NOT NULL, flow_config_id INTEGER NOT NULL, flow_num INTEGER NOT NULL, flow_size INTEGER NOT NULL, sequence INTEGER , do_num INTEGER NOT NULL, PRIMARY KEY(flow_id));PARTITION TABLE oz_flow ON COLUMN flow_id;
CREATE TABLE oz_flow_config  (flow_config_id INTEGER NOT NULL, periods INTEGER NOT NULL, status INTEGER NOT NULL, get_time INTEGER NOT NULL, modify_time TIMESTAMP NOT NULL, display INTEGER NOT NULL, PRIMARY KEY(flow_config_id));PARTITION TABLE oz_flow_config ON COLUMN flow_config_id;
CREATE TABLE oz_general_word  (word_id INTEGER NOT NULL, word_name VARCHAR(50) NOT NULL, status INTEGER , create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, PRIMARY KEY(word_id));PARTITION TABLE oz_general_word ON COLUMN word_id;
CREATE TABLE oz_general_word_apk  (id INTEGER NOT NULL, word_id INTEGER NOT NULL, res_id INTEGER NOT NULL, res_name VARCHAR(80) , img_id INTEGER , down_now INTEGER NOT NULL, brief_title VARCHAR(100) , brief_words VARCHAR(200) , sequence INTEGER NOT NULL, PRIMARY KEY(id));PARTITION TABLE oz_general_word_apk ON COLUMN id;
CREATE TABLE oz_group  (group_id INTEGER NOT NULL, group_name VARCHAR(100) NOT NULL, creator INTEGER NOT NULL, description VARCHAR(500) , create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, is_indie INTEGER , PRIMARY KEY(group_id));PARTITION TABLE oz_group ON COLUMN group_id;
CREATE TABLE oz_group_member  (id INTEGER NOT NULL, group_id INTEGER NOT NULL, channel_id VARCHAR(50) NOT NULL, screen_width INTEGER , screen_height INTEGER , hsman VARCHAR(50) , hstype VARCHAR(50) , creator INTEGER , PRIMARY KEY(id, screen_width, hsman, channel_id, screen_height, hstype));PARTITION TABLE oz_group_member ON COLUMN id;
CREATE TABLE oz_guess_you_like  (id INTEGER NOT NULL, market_id VARCHAR(20) NOT NULL, ref_id INTEGER NOT NULL, ref_type INTEGER NOT NULL, img_id INTEGER NOT NULL, sequence INTEGER NOT NULL, PRIMARY KEY(id));PARTITION TABLE oz_guess_you_like ON COLUMN id;
CREATE TABLE oz_image  (image_id INTEGER NOT NULL, image_name VARCHAR(100) NOT NULL, image_type INTEGER NOT NULL, image_width INTEGER NOT NULL, image_height INTEGER , hd_image_url VARCHAR(500) NOT NULL, nhd_image_url VARCHAR(500) NOT NULL, display INTEGER , status INTEGER NOT NULL, creator INTEGER NOT NULL, create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, PRIMARY KEY(image_id));PARTITION TABLE oz_image ON COLUMN image_id;
CREATE TABLE oz_image_from_360  (image_id INTEGER NOT NULL, image_name VARCHAR(100) NOT NULL, image_type INTEGER NOT NULL, image_width INTEGER NOT NULL, image_height INTEGER , hd_image_url VARCHAR(500) NOT NULL, nhd_image_url VARCHAR(500) NOT NULL, display INTEGER , status INTEGER NOT NULL, creator INTEGER NOT NULL, create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, PRIMARY KEY(image_id));PARTITION TABLE oz_image_from_360 ON COLUMN image_id;
CREATE TABLE oz_integral_activity  (activity_id INTEGER NOT NULL, module_id INTEGER NOT NULL, act_name VARCHAR(50) NOT NULL, act_url VARCHAR(100) NOT NULL, sequence INTEGER NOT NULL, img_id INTEGER NOT NULL, act_type INTEGER , PRIMARY KEY(activity_id));PARTITION TABLE oz_integral_activity ON COLUMN activity_id;
CREATE TABLE oz_integral_mall  (id INTEGER NOT NULL, trade_name VARCHAR(100) NOT NULL, trade_num INTEGER , use_integral INTEGER , activity_rules VARCHAR(1000) , start_time VARCHAR(30) , end_time VARCHAR(30) , icon VARCHAR(200) , type INTEGER NOT NULL, is_delete INTEGER , sequence INTEGER NOT NULL, show_type INTEGER , is_start_time VARCHAR(8) , is_end_time VARCHAR(8) , orig_trade_num INTEGER , area INTEGER , opt_name VARCHAR(50) , trade_total_num INTEGER NOT NULL, PRIMARY KEY(id));PARTITION TABLE oz_integral_mall ON COLUMN id;
CREATE TABLE oz_keyword  (keyword_id INTEGER NOT NULL, keyword_name VARCHAR(20) NOT NULL, creator INTEGER NOT NULL, description VARCHAR(100) , create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, jump_flag INTEGER , jump_url VARCHAR(100) , color_id INTEGER , PRIMARY KEY(keyword_id));PARTITION TABLE oz_keyword ON COLUMN keyword_id;
CREATE TABLE oz_label  (label_id INTEGER NOT NULL, label_name VARCHAR(20) NOT NULL, creator INTEGER NOT NULL, description VARCHAR(500) , create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, display_type VARCHAR(200) NOT NULL, parent INTEGER NOT NULL, PRIMARY KEY(label_id));PARTITION TABLE oz_label ON COLUMN label_id;
CREATE TABLE oz_label_360  (id INTEGER NOT NULL, label_id INTEGER , label_name VARCHAR(20) NOT NULL, apk_id INTEGER NOT NULL, pname VARCHAR(20) NOT NULL, zy_label_id INTEGER NOT NULL, zy_label_name VARCHAR(20) NOT NULL, PRIMARY KEY(id));PARTITION TABLE oz_label_360 ON COLUMN id;
CREATE TABLE oz_label_360name  (label_id INTEGER , label_name_360 VARCHAR(20) NOT NULL);
CREATE TABLE oz_label_zy_360  (id INTEGER NOT NULL, label_name_360 VARCHAR(50) NOT NULL, label_name_zy VARCHAR(50) NOT NULL, label_id_zy VARCHAR(50) NOT NULL, PRIMARY KEY(id));PARTITION TABLE oz_label_zy_360 ON COLUMN id;
CREATE TABLE oz_label_zy_uc  (uc_label_id INTEGER NOT NULL, uc_label_name VARCHAR(20) NOT NULL, zy_label_id INTEGER NOT NULL, zy_label_name VARCHAR(20) NOT NULL);PARTITION TABLE oz_label_zy_uc ON COLUMN uc_label_id;
CREATE TABLE oz_lottery_accesslog  (id INTEGER NOT NULL, openid VARCHAR(50) , imsi VARCHAR(50) NOT NULL, nickname VARCHAR(50) , create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, interface VARCHAR(50) , accesstype VARCHAR(50) , access_ext VARCHAR(50) , result VARCHAR(65535) , result_ext VARCHAR(16) , userregdate TIMESTAMP , userlotterydate_0 TIMESTAMP , userlotterydate_1 TIMESTAMP , usergotlotterydate TIMESTAMP , PRIMARY KEY(id));PARTITION TABLE oz_lottery_accesslog ON COLUMN id;
CREATE TABLE oz_lottery_record  (id INTEGER NOT NULL, imsi VARCHAR(30) , openid VARCHAR(30) , lotteryed TINYINT , gotlottery TINYINT , action VARCHAR(30) , result VARCHAR(30) , score INTEGER , createtime TIMESTAMP NOT NULL, firstlotteryday VARCHAR(30) , gotlotteryday VARCHAR(30) , PRIMARY KEY(id));PARTITION TABLE oz_lottery_record ON COLUMN id;
CREATE TABLE oz_mall_img  (img_id INTEGER NOT NULL, mall_id INTEGER , img_name VARCHAR(100) NOT NULL, image_width INTEGER NOT NULL, image_height INTEGER , hd_image_url VARCHAR(500) NOT NULL, nhd_image_url VARCHAR(500) NOT NULL, creator INTEGER NOT NULL, create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, PRIMARY KEY(img_id));PARTITION TABLE oz_mall_img ON COLUMN img_id;
CREATE TABLE oz_market_activity_module  (market_id VARCHAR(10) NOT NULL, module_id INTEGER NOT NULL, id INTEGER NOT NULL, PRIMARY KEY(id));PARTITION TABLE oz_market_activity_module ON COLUMN id;
CREATE TABLE oz_market_channel  (market_id VARCHAR(10) NOT NULL, pindao_id VARCHAR(10) NOT NULL, pindao_name VARCHAR(30) NOT NULL, sequence INTEGER NOT NULL, PRIMARY KEY(market_id, pindao_id));PARTITION TABLE oz_market_channel ON COLUMN market_id;
CREATE TABLE oz_market_group_relation  (mg_id INTEGER NOT NULL, market_id VARCHAR(10) NOT NULL, group_id INTEGER NOT NULL, create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, version_code VARCHAR(50) , tmp_version_code VARCHAR(5) , PRIMARY KEY(mg_id));PARTITION TABLE oz_market_group_relation ON COLUMN mg_id;
CREATE TABLE oz_market_info  (market_id VARCHAR(100) NOT NULL, market_name VARCHAR(80) NOT NULL, app_key VARCHAR(100) NOT NULL, description VARCHAR(300) , create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, is_delete INTEGER NOT NULL, company_id VARCHAR(100) NOT NULL, PRIMARY KEY(market_id));PARTITION TABLE oz_market_info ON COLUMN market_id;
CREATE TABLE oz_market_silence_config  (market_id VARCHAR(20) NOT NULL, version INTEGER NOT NULL, switch INTEGER NOT NULL, start_time TIMESTAMP NOT NULL, end_time TIMESTAMP NOT NULL, next_request_time INTEGER NOT NULL, screen_highlight INTEGER NOT NULL, create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, ch_switch_time INTEGER , PRIMARY KEY(market_id));PARTITION TABLE oz_market_silence_config ON COLUMN market_id;
CREATE TABLE oz_market_version_config  (id INTEGER NOT NULL, market_id VARCHAR(50) NOT NULL, version_code INTEGER , send_version_code INTEGER , is_delete INTEGER , create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, PRIMARY KEY(id));PARTITION TABLE oz_market_version_config ON COLUMN id;
CREATE TABLE oz_market_version_record  (id INTEGER NOT NULL, product_name VARCHAR(50) NOT NULL, apk_name VARCHAR(50) NOT NULL, package_name VARCHAR(100) NOT NULL, current_ver INTEGER NOT NULL, PRIMARY KEY(id));PARTITION TABLE oz_market_version_record ON COLUMN id;
CREATE TABLE oz_model_indexes  (model_id INTEGER NOT NULL, screen_res VARCHAR(50) , os_ver VARCHAR(50) , ram_size INTEGER , model_type INTEGER , create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, is_delete INTEGER , PRIMARY KEY(model_id));PARTITION TABLE oz_model_indexes ON COLUMN model_id;
CREATE TABLE oz_module_config  (server_id INTEGER NOT NULL, app_id VARCHAR(40) , ip VARCHAR(80) , port INTEGER , module_id INTEGER , active INTEGER , create_time TIMESTAMP , modify_time TIMESTAMP , PRIMARY KEY(server_id));PARTITION TABLE oz_module_config ON COLUMN server_id;
CREATE TABLE oz_official_alerts  (official_id INTEGER NOT NULL, official_title VARCHAR(255) NOT NULL, official_content VARCHAR(65535) NOT NULL, official_url VARCHAR(255) NOT NULL, create_time TIMESTAMP NOT NULL, status TINYINT NOT NULL, PRIMARY KEY(official_id));PARTITION TABLE oz_official_alerts ON COLUMN official_id;
CREATE TABLE oz_official_image  (image_id INTEGER NOT NULL, image_name VARCHAR(100) NOT NULL, image_type INTEGER NOT NULL, image_width INTEGER NOT NULL, image_height INTEGER , hd_image_url VARCHAR(500) NOT NULL, nhd_image_url VARCHAR(500) NOT NULL, display INTEGER , status INTEGER NOT NULL, creator INTEGER NOT NULL, create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, official_id INTEGER NOT NULL, PRIMARY KEY(image_id));PARTITION TABLE oz_official_image ON COLUMN image_id;
CREATE TABLE oz_operator  (oper_id INTEGER NOT NULL, oper_name VARCHAR(50) NOT NULL, PRIMARY KEY(oper_id));PARTITION TABLE oz_operator ON COLUMN oper_id;
CREATE TABLE oz_provider  (id INTEGER NOT NULL, provider_id INTEGER NOT NULL, provider_name VARCHAR(100) NOT NULL, provider_sn VARCHAR(100) NOT NULL, PRIMARY KEY(provider_id, id, provider_sn));PARTITION TABLE oz_provider ON COLUMN id;
CREATE TABLE oz_province  (province_id INTEGER NOT NULL, province_nm VARCHAR(10) NOT NULL, PRIMARY KEY(province_id));PARTITION TABLE oz_province ON COLUMN province_id;
CREATE TABLE oz_resource  (resource_id INTEGER NOT NULL, resource_name VARCHAR(20) NOT NULL, permission VARCHAR(50) , resource_url VARCHAR(200) , parent INTEGER , display_sort INTEGER NOT NULL, display_type VARCHAR(200) NOT NULL, description VARCHAR(500) NOT NULL, create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, PRIMARY KEY(resource_id));PARTITION TABLE oz_resource ON COLUMN resource_id;
CREATE TABLE oz_reward_download  (dl_id INTEGER NOT NULL, apk_id VARCHAR(10) , apk_name VARCHAR(100) , acti_imageUrl VARCHAR(200) , integral INTEGER , create_time TIMESTAMP , modify_time TIMESTAMP , is_delete INTEGER , active_type INTEGER , active_des VARCHAR(65535) , package_num INTEGER , package_id INTEGER , PRIMARY KEY(dl_id));PARTITION TABLE oz_reward_download ON COLUMN dl_id;
CREATE TABLE oz_reward_tel  (tel VARCHAR(15) NOT NULL);PARTITION TABLE oz_reward_tel ON COLUMN tel;
CREATE TABLE oz_role  (role_id INTEGER NOT NULL, role_name VARCHAR(20) NOT NULL, roles VARCHAR(200) NOT NULL, description VARCHAR(500) NOT NULL, create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, read_only INTEGER NOT NULL, PRIMARY KEY(role_id));PARTITION TABLE oz_role ON COLUMN role_id;
CREATE TABLE oz_role_resource  (role_id INTEGER NOT NULL, resource_id INTEGER NOT NULL);PARTITION TABLE oz_role_resource ON COLUMN role_id;
CREATE TABLE oz_search_keyword  (id INTEGER NOT NULL, location INTEGER NOT NULL, market_id VARCHAR(10) NOT NULL, ref_id INTEGER NOT NULL, img_id INTEGER , sequence INTEGER NOT NULL, PRIMARY KEY(id));PARTITION TABLE oz_search_keyword ON COLUMN id;
CREATE TABLE oz_search_word  (word_id INTEGER NOT NULL, word_name VARCHAR(50) NOT NULL, word_count INTEGER NOT NULL, PRIMARY KEY(word_id));PARTITION TABLE oz_search_word ON COLUMN word_id;
CREATE TABLE oz_sequence  (name VARCHAR(100) NOT NULL, current_value INTEGER NOT NULL, increment INTEGER NOT NULL, PRIMARY KEY(name));PARTITION TABLE oz_sequence ON COLUMN name;
CREATE TABLE oz_silent_download  (silent_id INTEGER NOT NULL, market_id VARCHAR(30) NOT NULL, apk_id INTEGER NOT NULL, down_type INTEGER NOT NULL, creator INTEGER , create_time TIMESTAMP NOT NULL, PRIMARY KEY(silent_id));PARTITION TABLE oz_silent_download ON COLUMN silent_id;
CREATE TABLE oz_system_config  (package_name VARCHAR(100) NOT NULL, channel_id VARCHAR(100) NOT NULL, desktop_switch INTEGER NOT NULL, PRIMARY KEY(channel_id, package_name));PARTITION TABLE oz_system_config ON COLUMN package_name;
CREATE TABLE oz_top_apk  (id INTEGER NOT NULL, apk_name VARCHAR(100) NOT NULL, package_name VARCHAR(100) NOT NULL, download_num INTEGER , create_time TIMESTAMP NOT NULL, PRIMARY KEY(id));PARTITION TABLE oz_top_apk ON COLUMN id;
CREATE TABLE oz_top_apk_upinfo  (id INTEGER NOT NULL, apk_name VARCHAR(100) NOT NULL, package_name VARCHAR(100) NOT NULL, version_code INTEGER NOT NULL, version_name VARCHAR(50) NOT NULL, company VARCHAR(50) , c_from VARCHAR(50) , is_up INTEGER , old_version_code INTEGER NOT NULL, old_version_name VARCHAR(50) NOT NULL, create_time TIMESTAMP NOT NULL, PRIMARY KEY(id));PARTITION TABLE oz_top_apk_upinfo ON COLUMN id;
CREATE TABLE oz_topic  (topic_id INTEGER NOT NULL, topic_name VARCHAR(100) NOT NULL, brief_introduction VARCHAR(500) , description VARCHAR(500) , img_id INTEGER NOT NULL, creator INTEGER , create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, topic_type VARCHAR(10) , wb_url VARCHAR(65535) , fg_color VARCHAR(10) , bg_color VARCHAR(10) , shake_type INTEGER NOT NULL, sort_flag INTEGER , red_dot INTEGER NOT NULL, is_ad INTEGER , PRIMARY KEY(topic_id));PARTITION TABLE oz_topic ON COLUMN topic_id;
CREATE TABLE oz_topic_assembly  (topic_id INTEGER NOT NULL, assembly_id INTEGER NOT NULL, sequence INTEGER NOT NULL, PRIMARY KEY(topic_id, assembly_id));PARTITION TABLE oz_topic_assembly ON COLUMN topic_id;
CREATE TABLE oz_turntable  (id INTEGER NOT NULL, period INTEGER NOT NULL, style INTEGER NOT NULL, type_id INTEGER NOT NULL, status INTEGER NOT NULL, image_url VARCHAR(200) , amount INTEGER , actual_amount INTEGER , money FLOAT , start_time TIMESTAMP NOT NULL, area INTEGER NOT NULL, is_include INTEGER NOT NULL, PRIMARY KEY(id));PARTITION TABLE oz_turntable ON COLUMN id;
CREATE TABLE oz_turntable_element  (id INTEGER NOT NULL, table_id INTEGER NOT NULL, style_id INTEGER NOT NULL, description VARCHAR(100) , image_url VARCHAR(200) NOT NULL, reward_image_url VARCHAR(200) , probability FLOAT NOT NULL, sequence INTEGER NOT NULL, reward_type INTEGER NOT NULL, PRIMARY KEY(id));PARTITION TABLE oz_turntable_element ON COLUMN id;
CREATE TABLE oz_turntable_reward  (reward_id INTEGER NOT NULL, table_id INTEGER NOT NULL, element_id INTEGER NOT NULL, sort INTEGER NOT NULL, date_sort INTEGER , time_sort INTEGER , new_user INTEGER , style_name VARCHAR(50) , PRIMARY KEY(reward_id));PARTITION TABLE oz_turntable_reward ON COLUMN reward_id;
CREATE TABLE oz_turntype  (type_id INTEGER NOT NULL, type_name VARCHAR(50) NOT NULL, PRIMARY KEY(type_id));PARTITION TABLE oz_turntype ON COLUMN type_id;
CREATE TABLE oz_turntype_style  (style_id INTEGER NOT NULL, type_id INTEGER NOT NULL, style_name VARCHAR(50) NOT NULL, integeral INTEGER NOT NULL, money FLOAT NOT NULL, flow INTEGER NOT NULL, PRIMARY KEY(style_id));PARTITION TABLE oz_turntype_style ON COLUMN style_id;
CREATE TABLE oz_user  (user_id INTEGER NOT NULL, user_name VARCHAR(50) , nickname VARCHAR(50) NOT NULL, password VARCHAR(200) , status VARCHAR(50) , description VARCHAR(500) NOT NULL, py_user_name VARCHAR(50) , py_password VARCHAR(20) , create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, company_id VARCHAR(50) , PRIMARY KEY(user_name, user_id));PARTITION TABLE oz_user ON COLUMN user_id;
CREATE TABLE oz_user_channel  (user_id INTEGER NOT NULL, channel_id VARCHAR(50) NOT NULL);PARTITION TABLE oz_user_channel ON COLUMN user_id;
CREATE TABLE oz_user_market  (user_id INTEGER NOT NULL, market_id VARCHAR(20) NOT NULL, pindao_id INTEGER NOT NULL);PARTITION TABLE oz_user_market ON COLUMN user_id;
CREATE TABLE oz_user_relation  (user_id INTEGER NOT NULL, ass_topic_id VARCHAR(20) NOT NULL, topic_type INTEGER NOT NULL);PARTITION TABLE oz_user_relation ON COLUMN user_id;
CREATE TABLE oz_user_role  (user_id INTEGER NOT NULL, role_id INTEGER NOT NULL);PARTITION TABLE oz_user_role ON COLUMN user_id;
CREATE TABLE oz_visit_apk_detail_rec  (hsman VARCHAR(30) , hstype VARCHAR(30) , os_ver VARCHAR(30) , screen_width INTEGER , screen_height INTEGER , cpu VARCHAR(30) , ram_size INTEGER , imsi VARCHAR(40) , imei VARCHAR(40) , lac VARCHAR(10) , ip VARCHAR(30) , network_type INTEGER , provider INTEGER , mac VARCHAR(20) , apk_name VARCHAR(80) , package_name VARCHAR(80) , channel_id VARCHAR(80) , app_id VARCHAR(40) , market_id VARCHAR(10) , pindao_id VARCHAR(10) , topic_name VARCHAR(100) , assembly_name VARCHAR(100) , version_code INTEGER , version_name VARCHAR(50) , source VARCHAR(50) , c_from VARCHAR(50) , topic_id VARCHAR(10) , apk_id INTEGER , apk_v INTEGER , uuid VARCHAR(50) , rom_size INTEGER , create_time TIMESTAMP , reserved VARCHAR(255) , lbs VARCHAR(80) );
CREATE TABLE oz_visitor  (id INTEGER NOT NULL, imei VARCHAR(40) , visit_time TIMESTAMP , PRIMARY KEY(id));PARTITION TABLE oz_visitor ON COLUMN id;
CREATE TABLE oz_welcome_info  (id INTEGER NOT NULL, market_id VARCHAR(10) NOT NULL, tip VARCHAR(200) , img_id INTEGER , create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, res_id INTEGER , res_type INTEGER , exit_tip VARCHAR(100) , PRIMARY KEY(id));PARTITION TABLE oz_welcome_info ON COLUMN id;
CREATE TABLE oz_white  (white_id INTEGER NOT NULL, channel_id VARCHAR(50) NOT NULL, package_name VARCHAR(1000) NOT NULL, create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, PRIMARY KEY(white_id));PARTITION TABLE oz_white ON COLUMN white_id;
CREATE TABLE oz_white_channel  (channel_id VARCHAR(50) NOT NULL, create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, PRIMARY KEY(channel_id));PARTITION TABLE oz_white_channel ON COLUMN channel_id;
CREATE TABLE oz_zyuser_alllotteryinfo  (id INTEGER NOT NULL, userid VARCHAR(50) , imsi VARCHAR(50) , nickname VARCHAR(50) NOT NULL, status INTEGER , item_id VARCHAR(50) , pool_id VARCHAR(50) , item_name VARCHAR(100) , item_cost INTEGER , create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, send_time TIMESTAMP , is_click INTEGER , virtual_text VARCHAR(65535) NOT NULL, is_shared INTEGER , tel VARCHAR(40) , give_flag INTEGER NOT NULL, PRIMARY KEY(id));PARTITION TABLE oz_zyuser_alllotteryinfo ON COLUMN id;
CREATE TABLE oz_zyuser_bonus  (id INTEGER NOT NULL, userid VARCHAR(50) , imsi VARCHAR(50) , nickname VARCHAR(50) NOT NULL, status INTEGER , item_id VARCHAR(50) , pool_id VARCHAR(50) , item_name VARCHAR(100) , item_cost INTEGER , create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, send_time TIMESTAMP , is_click INTEGER , virtual_text VARCHAR(65535) NOT NULL, is_shared INTEGER , tel VARCHAR(40) , give_flag INTEGER NOT NULL, PRIMARY KEY(id));PARTITION TABLE oz_zyuser_bonus ON COLUMN id;
CREATE TABLE oz_zyuser_flow  (id INTEGER NOT NULL, userid VARCHAR(50) , imsi VARCHAR(50) , nickname VARCHAR(50) NOT NULL, status INTEGER , item_id VARCHAR(50) , pool_id VARCHAR(50) , item_name VARCHAR(100) , item_cost INTEGER , create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, send_time TIMESTAMP , is_click INTEGER , virtual_text VARCHAR(65535) NOT NULL, is_shared INTEGER , tel VARCHAR(40) , give_flag INTEGER NOT NULL, order_id VARCHAR(50) , result_code VARCHAR(40) , PRIMARY KEY(id));PARTITION TABLE oz_zyuser_flow ON COLUMN id;
CREATE TABLE oz_zyuser_flow_record  (id INTEGER NOT NULL, userid VARCHAR(50) , imsi VARCHAR(50) , nickname VARCHAR(50) NOT NULL, status INTEGER , item_id VARCHAR(50) , pool_id VARCHAR(50) , item_name VARCHAR(100) , item_cost INTEGER , create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, send_time TIMESTAMP , is_click INTEGER , virtual_text VARCHAR(65535) NOT NULL, is_shared INTEGER , tel VARCHAR(40) , give_flag INTEGER NOT NULL, PRIMARY KEY(id));PARTITION TABLE oz_zyuser_flow_record ON COLUMN id;
CREATE TABLE oz_zyuser_grant_again  (id INTEGER NOT NULL, bonus_id INTEGER NOT NULL, amount INTEGER NOT NULL, type INTEGER NOT NULL, PRIMARY KEY(id));PARTITION TABLE oz_zyuser_grant_again ON COLUMN id;
CREATE TABLE oz_zyuser_purchase  (id INTEGER NOT NULL, userid VARCHAR(50) , imsi VARCHAR(50) , nickname VARCHAR(50) NOT NULL, status INTEGER , item_id VARCHAR(50) , item_name VARCHAR(100) , item_cost INTEGER , create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, send_time TIMESTAMP , is_click INTEGER , virtual_text VARCHAR(65535) , is_shared INTEGER , give_flag INTEGER NOT NULL, PRIMARY KEY(id));PARTITION TABLE oz_zyuser_purchase ON COLUMN id;
CREATE TABLE oz_zyuser_score  (id INTEGER NOT NULL, userid VARCHAR(50) , imsi VARCHAR(50) , nickname VARCHAR(50) NOT NULL, status INTEGER , item_id VARCHAR(50) , pool_id VARCHAR(50) , item_name VARCHAR(100) , item_cost INTEGER , create_time TIMESTAMP NOT NULL, modify_time TIMESTAMP NOT NULL, send_time TIMESTAMP , is_click INTEGER , virtual_text VARCHAR(65535) NOT NULL, is_shared INTEGER , tel VARCHAR(40) , give_flag INTEGER NOT NULL, PRIMARY KEY(id));PARTITION TABLE oz_zyuser_score ON COLUMN id;
CREATE TABLE oz_zyusers  (openid VARCHAR(40) NOT NULL, mobile VARCHAR(40) , nickname VARCHAR(50) , passwd VARCHAR(40) , gender VARCHAR(10) , score INTEGER , checkin INTEGER , lottery VARCHAR(20) , gotlottery INTEGER , shared INTEGER , spend INTEGER , contact_name VARCHAR(50) , contact_tel VARCHAR(50) , contact_address VARCHAR(65535) , create_time TIMESTAMP , update_time TIMESTAMP NOT NULL, PRIMARY KEY(openid));PARTITION TABLE oz_zyusers ON COLUMN openid;
CREATE TABLE tbl_ip_info  (id INTEGER NOT NULL, ip_start_num BIGINT NOT NULL, ip_end_num BIGINT NOT NULL, ip_start_str VARCHAR(20) NOT NULL, ip_end_str VARCHAR(20) NOT NULL, province_id INTEGER , provider_id INTEGER , city_id INTEGER , create_time TIMESTAMP , PRIMARY KEY(id));PARTITION TABLE tbl_ip_info ON COLUMN id;
CREATE TABLE terrorist_apk  (id INTEGER NOT NULL, apk_id INTEGER NOT NULL, apk_name VARCHAR(256) NOT NULL, status INTEGER NOT NULL, type INTEGER NOT NULL, apk_from VARCHAR(20) , terrorist_word VARCHAR(50) , PRIMARY KEY(id));PARTITION TABLE terrorist_apk ON COLUMN id;
CREATE TABLE terrorist_apk_by_name  (id INTEGER NOT NULL, apk_id INTEGER NOT NULL, apk_name VARCHAR(256) NOT NULL, status INTEGER NOT NULL, type INTEGER NOT NULL, PRIMARY KEY(id));PARTITION TABLE terrorist_apk_by_name ON COLUMN id;
CREATE TABLE test_address  (id INTEGER NOT NULL, status INTEGER , openid VARCHAR(40) NOT NULL, name VARCHAR(20) NOT NULL, telphone VARCHAR(40) , address VARCHAR(50) , fixed_line VARCHAR(40) , remark VARCHAR(40) , create_time TIMESTAMP , update_time TIMESTAMP NOT NULL, PRIMARY KEY(id));PARTITION TABLE test_address ON COLUMN id;
CREATE TABLE tmp_jifen_imsi  (imsi VARCHAR(30) NOT NULL, PRIMARY KEY(imsi));PARTITION TABLE tmp_jifen_imsi ON COLUMN imsi;
CREATE TABLE tpnprefix  (id INTEGER NOT NULL, telespid INTEGER NOT NULL, cityid INTEGER NOT NULL, prefix VARCHAR(64) NOT NULL, provincetemp VARCHAR(64) , citytemp VARCHAR(64) , PRIMARY KEY(id));PARTITION TABLE tpnprefix ON COLUMN id;
CREATE TABLE up_download_num  (apk_id INTEGER NOT NULL, download_num INTEGER , apk_name VARCHAR(100) NOT NULL, package_name VARCHAR(100) NOT NULL);PARTITION TABLE up_download_num ON COLUMN apk_id;
CREATE TABLE zy_lottery_dailyst  (stdate TIMESTAMP NOT NULL, type VARCHAR(16) NOT NULL, data_1_1 INTEGER , data_1_2 INTEGER , data_1_3 INTEGER , data_2_1 INTEGER , data_2_2 INTEGER , data_2_3 INTEGER , data_3_1 INTEGER , data_3_2 INTEGER , data_3_3 INTEGER , data_4_1 INTEGER , data_4_2 INTEGER , data_4_3 INTEGER , data_5_1 INTEGER , data_5_2 INTEGER , data_5_3 INTEGER , data_6_1 INTEGER , data_6_2 INTEGER , data_6_3 INTEGER , data_7_1 INTEGER , data_7_2 INTEGER , data_7_3 INTEGER , data_8_1 INTEGER , data_8_2 INTEGER , data_8_3 INTEGER , data_9_1 INTEGER , data_9_2 INTEGER , data_9_3 INTEGER , data_10_1 INTEGER , data_10_2 INTEGER , data_10_3 INTEGER , data_11_1 INTEGER , data_11_2 INTEGER , data_11_3 INTEGER , reserved INTEGER , PRIMARY KEY(type, stdate));