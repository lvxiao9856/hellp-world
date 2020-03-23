-- this is sql file
-- second change test
-- third change test
-- fourth change test
-- fifth change test
CREATE TABLE `abnormal`(
  `msisdn` string, 
  `num60` bigint)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/abnormal'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1009', 
  'numRows'='82980', 
  'rawDataSize'='748240', 
  'totalSize'='831220', 
  'transient_lastDdlTime'='1516700227')
;

CREATE TABLE `alldetailscore`(
  `msisdn` string, 
  `credit_score` double, 
  `credit_level` string, 
  `vgop_score` string, 
  `vgop_level` string, 
  `yiji_score` string, 
  `yiji_level` string, 
  `game_score` string, 
  `game_level` string, 
  `music_score` string, 
  `music_level` string, 
  `video_score` string, 
  `video_level` string, 
  `read_score` string, 
  `read_level` string, 
  `cartoon_score` string, 
  `cartoon_level` string, 
  `month` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/alldetailscore'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='171', 
  'numRows'='1260746011', 
  'rawDataSize'='92085795849', 
  'totalSize'='93346541860', 
  'transient_lastDdlTime'='1517197543')
;
CREATE TABLE `alldetailscore_error`(
  `msisdn` string, 
  `credit_score` double, 
  `credit_level` string, 
  `vgop_score` string, 
  `vgop_level` string, 
  `yiji_score` string, 
  `yiji_level` string, 
  `game_score` string, 
  `game_level` string, 
  `music_score` string, 
  `music_level` string, 
  `video_score` string, 
  `video_level` string, 
  `read_score` string, 
  `read_level` string, 
  `cartoon_score` string, 
  `cartoon_level` string, 
  `month` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/alldetailscore_error'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'last_modified_by'='hive', 
  'last_modified_time'='1500631525', 
  'numFiles'='190', 
  'numRows'='1309074648', 
  'rawDataSize'='74494556430', 
  'totalSize'='75803631078', 
  'transient_lastDdlTime'='1500631525')
;
CREATE TABLE `behavior_abnormal`(
  `msisdn` string, 
  `abnormal1` bigint, 
  `abnormal2` bigint, 
  `abnormal3` bigint, 
  `abnormal4` bigint, 
  `abnormal5` bigint)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/behavior_abnormal'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='1826199', 
  'rawDataSize'='38350179', 
  'totalSize'='40176378', 
  'transient_lastDdlTime'='1516702465')
;


CREATE TABLE `behavior_abnormal_tmp1`(
  `msisdn` string, 
  `abnormalid` string, 
  `time` string, 
  `type` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/behavior_abnormal_tmp1'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='1332633', 
  'rawDataSize'='43976889', 
  'totalSize'='45309522', 
  'transient_lastDdlTime'='1488448151')
;

CREATE TABLE `class_label`(
  `msisdn` string, 
  `label` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/class_label'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='140', 
  'transient_lastDdlTime'='1476085017')
;
CREATE TABLE `complain_index_sum`(
  `msisdn` string, 
  `index_p_1` string, 
  `index_p_2` string, 
  `index_p_3` string, 
  `index_p_4` string, 
  `index_p_5` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/complain_index_sum'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='239', 
  'transient_lastDdlTime'='1474710606')
;
CREATE TABLE `complain_table`(
  `msisdn` string, 
  `score` double)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/complain_table'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='24', 
  'numRows'='27120723', 
  'rawDataSize'='462804033', 
  'totalSize'='489924756', 
  'transient_lastDdlTime'='1482388107')
;
CREATE TABLE `credit_score`(
  `msisdn` string, 
  `user_account` string, 
  `is_abnormal` int, 
  `credit_score` double, 
  `credit_rank` string, 
  `sub_total_score` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/credit_score'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'last_modified_by'='hive', 
  'last_modified_time'='1500626629', 
  'numFiles'='241', 
  'numRows'='1260746011', 
  'rawDataSize'='60398655190', 
  'totalSize'='61659401201', 
  'transient_lastDdlTime'='1516997716')
;
CREATE TABLE `credit_score_1`(
  `msisdn` string, 
  `is_abnormal` int, 
  `migu_credit_score` double, 
  `game_credit_score` double)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/credit_score_1'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='49', 
  'numRows'='413108485', 
  'rawDataSize'='9530837035', 
  'totalSize'='9943945520', 
  'transient_lastDdlTime'='1516994348')
;
CREATE TABLE `credit_score_2`(
  `msisdn` string, 
  `is_abnormal` int, 
  `migu_credit_score` double, 
  `game_credit_score` double, 
  `vgop_credit_score` double)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/credit_score_2'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='156', 
  'numRows'='1243481920', 
  'rawDataSize'='33530728934', 
  'totalSize'='34774210854', 
  'transient_lastDdlTime'='1516994957')
;
CREATE TABLE `credit_score_21`(
  `msisdn` string, 
  `is_abnormal` int, 
  `migu_credit_score` double, 
  `game_credit_score` double, 
  `vgop_credit_score` double, 
  `cartoon_credit_score` double, 
  `video_credit_score` double, 
  `music_credit_score` double, 
  `read_credit_score` double)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/credit_score_21'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='167', 
  'numRows'='1260760727', 
  'rawDataSize'='49918666008', 
  'totalSize'='51179426735', 
  'transient_lastDdlTime'='1516995582')
;
CREATE TABLE `credit_score_3`(
  `msisdn` string, 
  `is_abnormal` int, 
  `credit_score` double, 
  `sub_total_score` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/credit_score_3'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='169', 
  'numRows'='1260760727', 
  'rawDataSize'='54465437458', 
  'totalSize'='55726198185', 
  'transient_lastDdlTime'='1516996133')
;
CREATE TABLE `credit_score_black`(
  `msisdn` string, 
  `credit_score` double, 
  `province_name` string, 
  `avg_score` double, 
  `user_account` string, 
  `is_abnormal` int, 
  `sub_total_score` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/credit_score_black'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='3', 
  'numRows'='12801929', 
  'rawDataSize'='735460769', 
  'totalSize'='748262698', 
  'transient_lastDdlTime'='1517198240')
;
CREATE TABLE `credit_score_black_in`(
  `type` string, 
  `src_comp` string, 
  `src_subcomp` string, 
  `black_type` string, 
  `msisdn` string, 
  `type_code` string, 
  `in_reason` string, 
  `in_time` string, 
  `out_reason` string, 
  `out_time` string, 
  `detail` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/credit_score_black_in'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='6', 
  'numRows'='12801929', 
  'rawDataSize'='960144675', 
  'totalSize'='972946604', 
  'transient_lastDdlTime'='1517198274')
;
CREATE TABLE `credit_score_black_in_201707`(
  `type` string, 
  `src_comp` string, 
  `src_subcomp` string, 
  `black_type` string, 
  `msisdn` string, 
  `type_code` string, 
  `in_reason` string, 
  `in_time` string, 
  `out_reason` string, 
  `out_time` string, 
  `detail` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/credit_score_black_in_201707'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'last_modified_by'='hive', 
  'last_modified_time'='1506482112', 
  'numFiles'='3', 
  'numRows'='7672831', 
  'rawDataSize'='575462325', 
  'totalSize'='583135156', 
  'transient_lastDdlTime'='1506482112')
;
CREATE TABLE `credit_score_black_out`(
  `type` string, 
  `src_comp` string, 
  `src_subcomp` string, 
  `black_type` string, 
  `msisdn` string, 
  `out_reason` string, 
  `out_time` string, 
  `detail` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/credit_score_black_out'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='4', 
  'numRows'='10139026', 
  'rawDataSize'='517090326', 
  'totalSize'='527229352', 
  'transient_lastDdlTime'='1502939512')
;
CREATE TABLE `credit_score_old`(
  `msisdn` string, 
  `user_account` string, 
  `is_abnormal` int, 
  `credit_score` double, 
  `credit_rank` string, 
  `sub_total_score` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/credit_score_old'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'last_modified_by'='hive', 
  'last_modified_time'='1489738818', 
  'numFiles'='273', 
  'numRows'='1359385221', 
  'rawDataSize'='74144828899', 
  'totalSize'='75504214120', 
  'transient_lastDdlTime'='1493976445')
;
CREATE TABLE `credit_score_test02`(
  `msisdn` string, 
  `num` bigint)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/credit_score_test02'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='295', 
  'numRows'='1326880051', 
  'rawDataSize'='17249440662', 
  'totalSize'='18576320713', 
  'transient_lastDdlTime'='1494225766')
;
CREATE TABLE `credit_score_tmp`(
  `msisdn` string, 
  `user_account` string, 
  `is_abnormal` int, 
  `credit_score` double, 
  `credit_rank` string, 
  `sub_total_score` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/credit_score_tmp'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='218', 
  'numRows'='1260760727', 
  'rawDataSize'='60399546908', 
  'totalSize'='61660307635', 
  'transient_lastDdlTime'='1516996639')
;


CREATE TABLE `dw_pconline_login_access_dt_result`(
  `msisdn` string, 
  `succ_accesscount` bigint)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/dw_pconline_login_access_dt_result'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1516687460')
;

CREATE TABLE `dw_user_all_behaviors_dt12`(
  `msisdn` string, 
  `channelid` int, 
  `down_count` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/dw_user_all_behaviors_dt12'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='4037', 
  'numRows'='4314850560', 
  'rawDataSize'='64723403768', 
  'totalSize'='69038254328', 
  'transient_lastDdlTime'='1516688059')
;
CREATE TABLE `dw_user_all_behaviors_dt13`(
  `msisdn` string, 
  `down_count_own` double, 
  `down_count_other` double)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/dw_user_all_behaviors_dt13'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='270', 
  'numRows'='432868570', 
  'rawDataSize'='8248043028', 
  'totalSize'='8680911598', 
  'transient_lastDdlTime'='1516688420')
;
CREATE TABLE `dw_user_all_behaviors_dt_result`(
  `msisdn` string, 
  `fee_count` bigint, 
  `fee_value` bigint, 
  `loginonline_count` bigint, 
  `loginwap` bigint, 
  `sdk_first_net` bigint, 
  `sdk_cnt_msg` bigint)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/dw_user_all_behaviors_dt_result'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='474', 
  'numRows'='432868570', 
  'rawDataSize'='10122089841', 
  'totalSize'='10554958411', 
  'transient_lastDdlTime'='1516686758')
;

CREATE TABLE `dw_user_order_package_dt_result`(
  `msisdn` string, 
  `order_fee` double, 
  `packageid_count` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/dw_user_order_package_dt_result'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='528', 
  'numRows'='104514255', 
  'rawDataSize'='1739328085', 
  'totalSize'='1843842340', 
  'transient_lastDdlTime'='1516687395')
;


CREATE TABLE `dw_user_www_url_result`(
  `msisdn` string, 
  `access_ok_num` bigint)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/dw_user_www_url_result'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='60432', 
  'rawDataSize'='800060', 
  'totalSize'='860492', 
  'transient_lastDdlTime'='1516689890')
;

CREATE TABLE `e_dim_c_service`(
  `sp_code` string, 
  `sp_name` string, 
  `operator_code` string, 
  `operator_name` string, 
  `other_bal_obj1` string, 
  `other_bal_obj2` string, 
  `bill_flag` string, 
  `bill_flag_desc` string, 
  `fee` int, 
  `valid_string` string, 
  `expire_string` string, 
  `bal_prop` float, 
  `count` int, 
  `re_confirm` string, 
  `deduct_clue` string, 
  `query_td` string, 
  `status` string, 
  `status_desc` string, 
  `content_id` string, 
  `content_desc` string, 
  `ptype_id` string, 
  `ptype_desc` string, 
  `game_type_old_id` string, 
  `game_type_id` string, 
  `game_type_desc` string, 
  `developer_name` string, 
  `cv_begin_time` string, 
  `cv_end_time` string, 
  `service_level` string, 
  `sms_code` string, 
  `sms_addr` string, 
  `push_code` string, 
  `suspend_cause` string, 
  `suspend_time` string, 
  `logo_file_name_web` string, 
  `logo_file_name_sbwap` string, 
  `logo_file_name_bwap` string, 
  `logo_file_name_mwap` string, 
  `logo_file_name_lwap` string, 
  `game_file_name` string, 
  `operater_desc` string, 
  `operater_instructions` string, 
  `discounted_rule` string, 
  `contentid` string, 
  `contenname` string, 
  `tryout_out` string, 
  `indexurl` string, 
  `rese0` string, 
  `rese0_desc` string, 
  `rese1` string, 
  `rese2` string, 
  `packageid` string, 
  `packagetype` string, 
  `packagetype_desc` string, 
  `in_string` string, 
  `up_string` string, 
  `data_from` string, 
  `rese` varchar(100), 
  `commercial_string` string, 
  `logo_file_name` string, 
  `banner_file_name` string, 
  `cooperationtype` string, 
  `packagetype_detail` string, 
  `packagetype_detail_desc` string, 
  `www_logo_file_name` string, 
  `hall_logo_file_name` string, 
  `mm_logo_file_name` string, 
  `rese13` string, 
  `provisioncode` string, 
  `stage` string)
PARTITIONED BY ( 
  `month` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/e_dim_c_service'
TBLPROPERTIES (
  'transient_lastDdlTime'='1478167752')
;
CREATE EXTERNAL TABLE `e_pay_index_sum`(
  `msisdn` string, 
  `index_1` string, 
  `index_2` string, 
  `index_3` string, 
  `index_4` string, 
  `index_5` string, 
  `index_6` string, 
  `index_7` string, 
  `index_8` string, 
  `index_9` string, 
  `index_10` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  '/bigdata/warehouse/mgwh_akita_ods.db/pay_wide_index_table'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='false', 
  'numFiles'='0', 
  'numRows'='-1', 
  'rawDataSize'='-1', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1476063791')
;
CREATE EXTERNAL TABLE `e_yiqi_score`(
  `msisdn` string, 
  `user_account` string, 
  `is_abnormal` int, 
  `credit_score` double, 
  `credit_rank` string, 
  `sub_total_score` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  '/mgwh/akita/hive/mgwh_akita_ods/credit_score'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='false', 
  'numFiles'='0', 
  'numRows'='-1', 
  'rawDataSize'='-1', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1478090691')
;
CREATE TABLE `fieldscore`(
  `msisdn` string, 
  `andriod_access_nums_score` double, 
  `self_charge_amount_score` double, 
  `self_charge_nums_score` double, 
  `is_complaint_score` double, 
  `user_experience_score` double, 
  `user_vip_level_score` double, 
  `is_download_gamedt_score` double, 
  `gamedt_browse_nums_score` double, 
  `gamedt_login_nums_score` double, 
  `usercen_loginexp_nums_score` double, 
  `fee_nums_score` double, 
  `fee_amount_score` double, 
  `gameonline_loginnums_score` double, 
  `game_wap_login_nums_score` double, 
  `game_start_nums_score` double, 
  `order_amount_score` double, 
  `packageid_nums_score` double, 
  `pc_succ_login_nums_score` double, 
  `own_portal_dl_nums_score` double, 
  `other_portal_dl_nums_score` double, 
  `mins5_most_score` double, 
  `over60_score` double)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/fieldscore'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='104', 
  'numRows'='399193526', 
  'rawDataSize'='40608428741', 
  'totalSize'='41007622267', 
  'transient_lastDdlTime'='1516702364')
;
CREATE TABLE `fivesecond2`(
  `msisdn` string, 
  `num` bigint)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/fivesecond2'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='201', 
  'numRows'='120856289', 
  'rawDataSize'='1571143765', 
  'totalSize'='1692000054', 
  'transient_lastDdlTime'='1516698978')
;
CREATE TABLE `game_credit_score`(
  `msisdn` string, 
  `user_account` string, 
  `is_abnormal` int, 
  `credit_score` double, 
  `credit_rank` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/game_credit_score'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='35', 
  'numRows'='399193526', 
  'rawDataSize'='11136725201', 
  'totalSize'='11535918727', 
  'transient_lastDdlTime'='1516703998')
;
CREATE TABLE `game_credit_score_dl2`(
  `msisdn` string, 
  `is_abnormal` double, 
  `inital_score` int, 
  `added_score` double, 
  `user_basic_info_score` double, 
  `portal_access_score` double, 
  `game_download_score` double, 
  `game_start_score` double, 
  `game_login_score` double, 
  `game_consume_score` double, 
  `minused_score` double, 
  `mins5_most_score` double, 
  `over60_score` double, 
  `abnormal_score` int)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/game_credit_score_dl2'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='162', 
  'numRows'='399193526', 
  'rawDataSize'='27024368396', 
  'totalSize'='27423561922', 
  'transient_lastDdlTime'='1516703808')
;
CREATE TABLE `game_credit_score_dl3`(
  `msisdn` string, 
  `andriod_access_nums_score` double, 
  `self_charge_amount_score` double, 
  `self_charge_nums_score` double, 
  `is_complaint_score` double, 
  `user_experience_score` double, 
  `user_vip_level_score` double, 
  `is_download_gamedt_score` double, 
  `gamedt_browse_nums_score` double, 
  `gamedt_login_nums_score` double, 
  `usercen_loginexp_nums_score` double, 
  `fee_nums_score` double, 
  `fee_amount_score` double, 
  `gameonline_loginnums_score` double, 
  `game_wap_login_nums_score` double, 
  `game_start_nums_score` double, 
  `order_amount_score` double, 
  `packageid_nums_score` double, 
  `pc_succ_login_nums_score` double, 
  `own_portal_dl_nums_score` double, 
  `other_portal_dl_nums_score` double, 
  `mins5_most_score` double, 
  `over60_score` double, 
  `label1` int, 
  `label2` int, 
  `label3` int, 
  `label4` int, 
  `label5` int)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/game_credit_score_dl3'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='161', 
  'numRows'='399193526', 
  'rawDataSize'='44600364001', 
  'totalSize'='44999557527', 
  'transient_lastDdlTime'='1516703159')
;
CREATE TABLE `game_credit_score_temp1`(
  `msisdn` string, 
  `user_account` string, 
  `is_abnormal` double, 
  `credit_score` double)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/game_credit_score_temp1'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='90', 
  'numRows'='399193526', 
  'rawDataSize'='9140757571', 
  'totalSize'='9539951097', 
  'transient_lastDdlTime'='1516703925')
;
CREATE TABLE `game_totalhang_credit_score`(
  `msisdn` string, 
  `is_abnormal` int, 
  `cartoon_credit_score` double, 
  `video_credit_score` double, 
  `music_credit_score` double, 
  `read_credit_score` double, 
  `game_credit_score` double)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/game_totalhang_credit_score'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='122', 
  'numRows'='786631790', 
  'rawDataSize'='26223556106', 
  'totalSize'='27010187896', 
  'transient_lastDdlTime'='1499759744')
;
CREATE TABLE `gamedt_behavior`(
  `msisdn` string, 
  `gamedt_download_monthly` bigint, 
  `gamedt_browse_monthly` bigint, 
  `gamedt_login_monthly` bigint)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/gamedt_behavior'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='3237297', 
  'rawDataSize'='62566931', 
  'totalSize'='65804228', 
  'transient_lastDdlTime'='1516694161')
;
CREATE TABLE `gamedt_behavior_1`(
  `msisdn` string, 
  `gamedt_download_monthly` bigint, 
  `gamedt_browse_monthly` bigint, 
  `gamedt_login_monthly` bigint)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/gamedt_behavior_1'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='3237297', 
  'rawDataSize'='57579531', 
  'totalSize'='60816828', 
  'transient_lastDdlTime'='1516694282')
;
CREATE TABLE `gamedt_behavior_sum`(
  `msisdn` string, 
  `download_ever` int, 
  `gamedt_browse_monthly` bigint, 
  `gamedt_login_monthly` bigint)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/gamedt_behavior_sum'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='3237297', 
  'rawDataSize'='57578784', 
  'totalSize'='60816081', 
  'transient_lastDdlTime'='1516694311')
;
CREATE TABLE `gamedt_browse_result`(
  `msisdn` string, 
  `gamedt_browse_monthly` bigint)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/gamedt_browse_result'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='458', 
  'numRows'='1466487', 
  'rawDataSize'='19840956', 
  'totalSize'='21307443', 
  'transient_lastDdlTime'='1516693805')
;
CREATE TABLE `gamedt_download_result`(
  `msisdn` string, 
  `gamedt_download_monthly` bigint)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/gamedt_download_result'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='56644', 
  'rawDataSize'='737119', 
  'totalSize'='793763', 
  'transient_lastDdlTime'='1516693870')
;
CREATE TABLE `gamedt_login_result`(
  `msisdn` string, 
  `gamedt_login_monthly` bigint)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/gamedt_login_result'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='52', 
  'numRows'='3201360', 
  'rawDataSize'='43385790', 
  'totalSize'='46587150', 
  'transient_lastDdlTime'='1516693975')
;
CREATE TABLE `kate_part`(
  `msisdn` string, 
  `download_ever` int, 
  `gamedt_browse_monthly` bigint, 
  `gamedt_login_monthly` bigint, 
  `usercenter_login_explict` bigint)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/kate_part'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='3895357', 
  'rawDataSize'='81761433', 
  'totalSize'='85656790', 
  'transient_lastDdlTime'='1516695289')
;
CREATE TABLE `label_score_online`(
  `msisdn` string, 
  `label_id` string, 
  `label_score` double, 
  `label_degree` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/label_score_online'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='34', 
  'numRows'='131765952', 
  'rawDataSize'='3148257926', 
  'totalSize'='3280023878', 
  'transient_lastDdlTime'='1486095699')
;

CREATE TABLE `migu_credit_score_detail2`(
  `msisdn` string, 
  `is_abnormal` string, 
  `initial_score` int, 
  `added_score` double, 
  `usercenter_score` double, 
  `payment_score` string, 
  `productcenter_score` string, 
  `custom_service_score` string, 
  `minused_score` string, 
  `reset1` string, 
  `reset2` string, 
  `reset3` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/migu_credit_score_detail2'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='16', 
  'numRows'='77322451', 
  'rawDataSize'='2683727610', 
  'totalSize'='2761050061', 
  'transient_lastDdlTime'='1499402487')
;
CREATE TABLE `migu_credit_score_detail3`(
  `msisdn` string, 
  `login_freq_score` double, 
  `is_explicit_score` double, 
  `account_behavior_score` double, 
  `reset1` string, 
  `reset2` string, 
  `reset3` string, 
  `reset4` string, 
  `reset5` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/migu_credit_score_detail3'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='11', 
  'numRows'='77322451', 
  'rawDataSize'='2270636191', 
  'totalSize'='2347958642', 
  'transient_lastDdlTime'='1499402248')
;
CREATE TABLE `migu_credit_score_old`(
  `msisdn` string, 
  `credit_score` double, 
  `credit_rank` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/migu_credit_score_old'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'last_modified_by'='hive', 
  'last_modified_time'='1499412019', 
  'numFiles'='21', 
  'numRows'='77322451', 
  'rawDataSize'='1901930643', 
  'totalSize'='1979253094', 
  'transient_lastDdlTime'='1499412019')
;

CREATE TABLE `migu_hangzhou_total201705`(
  `msisdn` string, 
  `is_abnormal` int, 
  `cartoon_credit_score` double, 
  `video_credit_score` double, 
  `music_credit_score` double, 
  `read_credit_score` double)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/migu_hangzhou_total201705'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='39', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1499681664')
;
CREATE TABLE `migu_hangzhou_total_201705`(
  `msisdn` string, 
  `is_abnormal` int, 
  `cartoon_credit_score` double, 
  `video_credit_score` double, 
  `music_credit_score` double, 
  `read_credit_score` double)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/migu_hangzhou_total_201705'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='39', 
  'numRows'='266376059', 
  'rawDataSize'='13273352919', 
  'totalSize'='13539728978', 
  'transient_lastDdlTime'='1499650637')
;
CREATE TABLE `migu_index_col`(
  `msisdn` string, 
  `index_id` int, 
  `index_sum` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  '/bigdata/warehouse/mgwh_akita_ods.db/migu_index_col'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1491120120')
;
CREATE TABLE `migu_index_score`(
  `msisdn` string, 
  `index_id` string, 
  `index_score` double)
PARTITIONED BY ( 
  `month` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  '/bigdata/warehouse/mgwh_akita_ods.db/migu_index_score'
TBLPROPERTIES (
  'transient_lastDdlTime'='1472975088')
;
CREATE TABLE `migu_index_sum`(
  `msisdn` string, 
  `index1` string, 
  `index2` string, 
  `index3` string, 
  `index4` string, 
  `index5` string, 
  `index6` string, 
  `index7` string, 
  `index8` string, 
  `index9` string, 
  `index10` string, 
  `index11` string, 
  `index12` string, 
  `index13` string, 
  `index14` string, 
  `index15` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  '/bigdata/warehouse/mgwh_akita_ods.db/migu_index_sum'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1491120081')
;
CREATE TABLE `migu_label_index`(
  `label_id` string, 
  `index_id` string, 
  `index_weight` double, 
  `index_max` int, 
  `index_min` int)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  '/bigdata/warehouse/mgwh_akita_ods.db/migu_label_index'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'last_modified_by'='hive', 
  'last_modified_time'='1473296708', 
  'numFiles'='1', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='134', 
  'transient_lastDdlTime'='1486091025')
;
CREATE TABLE `migu_label_score`(
  `msisdn` string, 
  `label_id` string, 
  `label_score` double, 
  `label_degree` double)
PARTITIONED BY ( 
  `month` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  '/bigdata/warehouse/mgwh_akita_ods.db/migu_label_score'
TBLPROPERTIES (
  'transient_lastDdlTime'='1472975088')
;
CREATE TABLE `migu_label_score_id`(
  `msisdn` string, 
  `label_id` string, 
  `label_score` double, 
  `label_degree` double)
PARTITIONED BY ( 
  `month` string, 
  `id` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  '/bigdata/warehouse/mgwh_akita_ods.db/migu_label_score_id'
TBLPROPERTIES (
  'transient_lastDdlTime'='1480918171')
;
CREATE TABLE `migu_label_score_tmp`(
  `msisdn` string, 
  `label_id` string, 
  `label_score` double)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  '/bigdata/warehouse/mgwh_akita_ods.db/migu_label_score_tmp'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='84', 
  'numRows'='114927298', 
  'rawDataSize'='2033793615', 
  'totalSize'='2148720913', 
  'transient_lastDdlTime'='1486094236')
;

CREATE TABLE `misid_userid_1`(
  `msisdn` string, 
  `userid` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/misid_userid_1'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='46', 
  'numRows'='117805422', 
  'rawDataSize'='2572132509', 
  'totalSize'='2689937931', 
  'transient_lastDdlTime'='1516691402')
;
CREATE TABLE `misid_userid_result`(
  `msisdn` string, 
  `userid` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/misid_userid_result'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='11', 
  'numRows'='90311569', 
  'rawDataSize'='1969996361', 
  'totalSize'='2060307930', 
  'transient_lastDdlTime'='1516692197')
;
CREATE TABLE `mobile_number`(
  `msisdn` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/mobile_number'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='221539632', 
  'transient_lastDdlTime'='1492675547')
;
CREATE EXTERNAL TABLE `model_dt_preresult`(
  `msisdn` string, 
  `op_date` string, 
  `label` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/outlier_db.db/resultset/dt_preresult'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='false', 
  'numFiles'='0', 
  'numRows'='-1', 
  'rawDataSize'='-1', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1502782759')
;
CREATE EXTERNAL TABLE `model_lr_preresult`(
  `msisdn` string, 
  `op_date` string, 
  `label` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/outlier_db.db/resultset/lr_preresult'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='false', 
  'numFiles'='0', 
  'numRows'='-1', 
  'rawDataSize'='-1', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1502782759')
;
CREATE EXTERNAL TABLE `model_rf_preresult`(
  `msisdn` string, 
  `op_date` string, 
  `label` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/outlier_db.db/resultset/rf_preresult'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='false', 
  'numFiles'='0', 
  'numRows'='-1', 
  'rawDataSize'='-1', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1502782759')
;
CREATE TABLE `msisdn_province`(
  `msisdn` string, 
  `province` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/msisdn_province'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='2015165782', 
  'transient_lastDdlTime'='1490175015')
;
CREATE TABLE `msisdn_province_id`(
  `msisdn` string, 
  `province_id` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\t' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/msisdn_province_id'
TBLPROPERTIES (
  'transient_lastDdlTime'='1502265168')
;
CREATE TABLE `msisdn_province_name`(
  `msisdn` string, 
  `province_id` string, 
  `province_name` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/msisdn_province_name'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='171903', 
  'rawDataSize'='3118473', 
  'totalSize'='3290376', 
  'transient_lastDdlTime'='1502265382')
;


CREATE TABLE `new_credit_score1`(
  `msisdn` string, 
  `credit_score` double, 
  `credit_rank` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/new_credit_score1'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='false', 
  'numFiles'='78', 
  'numRows'='-1', 
  'rawDataSize'='-1', 
  'totalSize'='11918931547', 
  'transient_lastDdlTime'='1490260198')
;
CREATE TABLE `new_redit_score2`(
  `msisdn` string, 
  `credit_score` double, 
  `credit_rank` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/new_redit_score2'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='236', 
  'numRows'='1245922345', 
  'rawDataSize'='31025320597', 
  'totalSize'='32271242942', 
  'transient_lastDdlTime'='1490262531')
;


CREATE TABLE `ods_user_charge_log_1`(
  `userid` string, 
  `msisdn` string, 
  `provinceid` string, 
  `cityid` string, 
  `provcode` string, 
  `areacode` string, 
  `cardtypeid` string, 
  `wapfirstdate` string, 
  `wapmodifydate` string, 
  `sum_err_fee` string, 
  `sum_fee` string, 
  `sms_err_fee` string, 
  `sms_fee` string, 
  `sum_err_count` string, 
  `sumcount` string, 
  `sms_err_count` string, 
  `sms_count` string, 
  `sum_values` string, 
  `source_type` string, 
  `sum_date` string, 
  `createdate` string, 
  `modifydate` string, 
  `bwtypeid` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/ods_user_charge_log_1'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1516692508')
;
CREATE TABLE `ods_user_charge_log_result`(
  `msisdn` string, 
  `fee` bigint, 
  `feenum` bigint)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/ods_user_charge_log_result'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1516692543')
;

CREATE TABLE `pay_index_sum`(
  `msisdn` string, 
  `index_1` string, 
  `index_2` string, 
  `index_3` string, 
  `index_4` string, 
  `index_5` string, 
  `index_6` string, 
  `index_7` string, 
  `index_8` string, 
  `index_9` string, 
  `index_10` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/pay_index_sum'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='363', 
  'transient_lastDdlTime'='1474710551')
;
CREATE TABLE `pay_table`(
  `msisdn` string, 
  `score` double)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/pay_table'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='24', 
  'numRows'='27120723', 
  'rawDataSize'='544193697', 
  'totalSize'='571314420', 
  'transient_lastDdlTime'='1482387773')
;
CREATE TABLE `province_id_name`(
  `province_id` string, 
  `province_name` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\t' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/province_id_name'
TBLPROPERTIES (
  'transient_lastDdlTime'='1502261852')
;


CREATE TABLE `tb_bipbadfee1`(
  `sum_date` string, 
  `msisdn` string, 
  `starttime` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/tb_bipbadfee1'
TBLPROPERTIES (
  'transient_lastDdlTime'='1474452194')
;

CREATE TABLE `tb_csvcget_day_result`(
  `msisdn` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/tb_csvcget_day_result'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='2', 
  'numRows'='561679', 
  'rawDataSize'='6178469', 
  'totalSize'='6740148', 
  'transient_lastDdlTime'='1516693064')
;

CREATE TABLE `tb_d_bwlist_result`(
  `msisdn` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/tb_d_bwlist_result'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='23', 
  'numRows'='45276652', 
  'rawDataSize'='498043023', 
  'totalSize'='543319675', 
  'transient_lastDdlTime'='1516693035')
;



CREATE TABLE `tb_msisdn_haoduan`(
  `msisdn07` string, 
  `source` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/tb_msisdn_haoduan'
TBLPROPERTIES (
  'transient_lastDdlTime'='1477447220')
;
CREATE TABLE `tb_msisdn_haoduan_tmp`(
  `msisdn07` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/tb_msisdn_haoduan_tmp'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1477447585')
;

CREATE TABLE `tb_zxy_1mao`(
  `sum_date` string, 
  `msisdn` string, 
  `province_name` string, 
  `city_name` string, 
  `channel_name` string, 
  `sp_code` string, 
  `sp_name` string, 
  `operator_code` string, 
  `operator_name` string, 
  `fee` string, 
  `op_time` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/tb_zxy_1mao'
TBLPROPERTIES (
  'transient_lastDdlTime'='1477447110')
;
CREATE TABLE `tb_zxy_1mao_sk`(
  `sum_date` string, 
  `msisdn` string, 
  `province_name` string, 
  `city_name` string, 
  `channel_name` string, 
  `sp_code` string, 
  `sp_name` string, 
  `operator_code` string, 
  `operator_name` string, 
  `fee` string, 
  `op_time` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/tb_zxy_1mao_sk'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1477447270')
;
CREATE TABLE `test`(
  `msisdn` string, 
  `score` double)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/test'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'totalSize'='42', 
  'transient_lastDdlTime'='1472718178')
;
CREATE TABLE `test0911`(
  `a` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/test0911'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='12', 
  'transient_lastDdlTime'='1504251502')
;
CREATE TABLE `test1013`(
  `m` string, 
  `b` string, 
  `c` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/test1013'
TBLPROPERTIES (
  'transient_lastDdlTime'='1476364174')
;
CREATE TABLE `test1201`(
  `msisdn` string, 
  `label_id` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/test1201'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='100', 
  'rawDataSize'='1288', 
  'totalSize'='1388', 
  'transient_lastDdlTime'='1480583910')
;
CREATE EXTERNAL TABLE `testing10p_raw`(
  `rowid` bigint, 
  `duration` float, 
  `protocol_type` string, 
  `service` string, 
  `flag` string, 
  `src_bytes` float, 
  `dst_bytes` float, 
  `land` tinyint, 
  `wrong_fragment` float, 
  `urgent` float, 
  `hot` float, 
  `num_failed_logins` float, 
  `logged_in` tinyint, 
  `num_compromised` float, 
  `root_shell` float, 
  `su_attempted` float, 
  `num_root` float, 
  `num_file_creations` float, 
  `num_shells` float, 
  `num_access_files` float, 
  `num_outbound_cmds` float, 
  `is_host_login` tinyint, 
  `is_guest_login` tinyint, 
  `count` float, 
  `srv_count` float, 
  `serror_rate` float, 
  `srv_serror_rate` float, 
  `rerror_rate` float, 
  `srv_rerror_rate` float, 
  `same_srv_rate` float, 
  `diff_srv_rate` float, 
  `srv_diff_host_rate` float, 
  `dst_host_count` float, 
  `dst_host_srv_count` float, 
  `dst_host_same_srv_rate` float, 
  `dst_host_diff_srv_rate` float, 
  `dst_host_same_src_port_rate` float, 
  `dst_host_srv_diff_host_rate` float, 
  `dst_host_serror_rate` float, 
  `dst_host_srv_serror_rate` float, 
  `dst_host_rerror_rate` float, 
  `dst_host_srv_rerror_rate` float, 
  `label` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/kdd.db/testing10p'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='false', 
  'numFiles'='0', 
  'numRows'='-1', 
  'rawDataSize'='-1', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1488870727')
;
CREATE TABLE `tmp_table`(
  `msisdn` string, 
  `index_id` string, 
  `index_score` double, 
  `month` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/tmp_table'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='30', 
  'rawDataSize'='730', 
  'totalSize'='760', 
  'transient_lastDdlTime'='1473058939')
;
CREATE TABLE `total_fhl`(
  `msisdn` string, 
  `fee_count` bigint, 
  `fee_value` bigint, 
  `loginonline_count` bigint, 
  `loginwap` bigint, 
  `sdk_first_net` bigint, 
  `sdk_cnt_msg` bigint, 
  `order_fee` double, 
  `packageid_count` int, 
  `succ_accesscount` bigint, 
  `down_count_own` double, 
  `down_count_other` double)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/total_fhl'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='91', 
  'numRows'='433479587', 
  'rawDataSize'='17493866227', 
  'totalSize'='17927345814', 
  'transient_lastDdlTime'='1516689254')
;
CREATE TABLE `total_zf`(
  `msisdn` string, 
  `access_ok_num` bigint, 
  `charge` bigint, 
  `chargenum` bigint, 
  `complaint` int, 
  `userlevel` double, 
  `viplevel` double)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/total_zf'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='621882', 
  'rawDataSize'='17426911', 
  'totalSize'='18048793', 
  'transient_lastDdlTime'='1516693167')
;
CREATE TABLE `total_zf2`(
  `msisdn` string, 
  `complaint` int, 
  `userlevel` double, 
  `viplevel` double)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/total_zf2'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='561679', 
  'rawDataSize'='10671901', 
  'totalSize'='11233580', 
  'transient_lastDdlTime'='1516693129')
;
CREATE TABLE `totaldata`(
  `msisdn` string, 
  `access_ok_num` double, 
  `charge` double, 
  `chargenum` double, 
  `complaint` double, 
  `userlevel` double, 
  `viplevel` double, 
  `download_ever` double, 
  `gamedt_browse_monthly` double, 
  `gamedt_login_monthly` double, 
  `usercenter_login_explict` double, 
  `fee_count` double, 
  `fee_value` double, 
  `loginonline_count` double, 
  `loginwap` double, 
  `start` double, 
  `order_fee` double, 
  `packageid_count` double, 
  `succ_accesscount` double, 
  `down_count_own` double, 
  `down_count_other` double, 
  `num5` bigint, 
  `num60` bigint)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/totaldata'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='120', 
  'numRows'='399193526', 
  'rawDataSize'='31074727203', 
  'totalSize'='31473920729', 
  'transient_lastDdlTime'='1516701522')
;
CREATE TABLE `totaldata1`(
  `msisdn` string, 
  `access_ok_num` bigint, 
  `charge` bigint, 
  `chargenum` bigint, 
  `complaint` int, 
  `userlevel` double, 
  `viplevel` double, 
  `download_ever` int, 
  `gamedt_browse_monthly` bigint, 
  `gamedt_login_monthly` bigint, 
  `usercenter_login_explict` bigint)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/totaldata1'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='4502245', 
  'rawDataSize'='176152600', 
  'totalSize'='180654845', 
  'transient_lastDdlTime'='1516695381')
;
CREATE TABLE `totaldata4`(
  `msisdn` string, 
  `access_ok_num` double, 
  `charge` double, 
  `chargenum` double, 
  `complaint` double, 
  `userlevel` double, 
  `viplevel` double, 
  `download_ever` double, 
  `gamedt_browse_monthly` double, 
  `gamedt_login_monthly` double, 
  `usercenter_login_explict` double, 
  `fee_count` double, 
  `fee_value` double, 
  `loginonline_count` double, 
  `loginwap` double, 
  `start` double, 
  `order_fee` double, 
  `packageid_count` double, 
  `succ_accesscount` double, 
  `down_count_own` double, 
  `down_count_other` double)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/totaldata4'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='105', 
  'numRows'='435244647', 
  'rawDataSize'='32032043272', 
  'totalSize'='32467287919', 
  'transient_lastDdlTime'='1516696376')
;
CREATE TABLE `totaldata6`(
  `msisdn` string, 
  `access_ok_num` double, 
  `charge` double, 
  `chargenum` double, 
  `complaint` double, 
  `userlevel` double, 
  `viplevel` double, 
  `download_ever` double, 
  `gamedt_browse_monthly` double, 
  `gamedt_login_monthly` double, 
  `usercenter_login_explict` double, 
  `fee_count` double, 
  `fee_value` double, 
  `loginonline_count` double, 
  `loginwap` double, 
  `start` double, 
  `order_fee` double, 
  `packageid_count` double, 
  `succ_accesscount` double, 
  `down_count_own` double, 
  `down_count_other` double, 
  `msisdn1` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/totaldata6'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='117', 
  'numRows'='399345564', 
  'rawDataSize'='30682613413', 
  'totalSize'='31081958977', 
  'transient_lastDdlTime'='1516697789')
;
CREATE TABLE `totaldata7`(
  `msisdn` string, 
  `access_ok_num` double, 
  `charge` double, 
  `chargenum` double, 
  `complaint` double, 
  `userlevel` double, 
  `viplevel` double, 
  `download_ever` double, 
  `gamedt_browse_monthly` double, 
  `gamedt_login_monthly` double, 
  `usercenter_login_explict` double, 
  `fee_count` double, 
  `fee_value` double, 
  `loginonline_count` double, 
  `loginwap` double, 
  `start` double, 
  `order_fee` double, 
  `packageid_count` double, 
  `succ_accesscount` double, 
  `down_count_own` double, 
  `down_count_other` double)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/totaldata7'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='117', 
  'numRows'='399193526', 
  'rawDataSize'='29472079277', 
  'totalSize'='29871272803', 
  'transient_lastDdlTime'='1516698479')
;
CREATE TABLE `totaldata8`(
  `msisdn` string, 
  `access_ok_num` double, 
  `charge` double, 
  `chargenum` double, 
  `complaint` double, 
  `userlevel` double, 
  `viplevel` double, 
  `download_ever` double, 
  `gamedt_browse_monthly` double, 
  `gamedt_login_monthly` double, 
  `usercenter_login_explict` double, 
  `fee_count` double, 
  `fee_value` double, 
  `loginonline_count` double, 
  `loginwap` double, 
  `start` double, 
  `order_fee` double, 
  `packageid_count` double, 
  `succ_accesscount` double, 
  `down_count_own` double, 
  `down_count_other` double, 
  `num5` bigint)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/totaldata8'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='124', 
  'numRows'='399193526', 
  'rawDataSize'='30270478336', 
  'totalSize'='30669671862', 
  'transient_lastDdlTime'='1516700878')
;
CREATE EXTERNAL TABLE `training10p_raw`(
  `rowid` bigint, 
  `duration` float, 
  `protocol_type` string, 
  `service` string, 
  `flag` string, 
  `src_bytes` float, 
  `dst_bytes` float, 
  `land` tinyint, 
  `wrong_fragment` float, 
  `urgent` float, 
  `hot` float, 
  `num_failed_logins` float, 
  `logged_in` tinyint, 
  `num_compromised` float, 
  `root_shell` float, 
  `su_attempted` float, 
  `num_root` float, 
  `num_file_creations` float, 
  `num_shells` float, 
  `num_access_files` float, 
  `num_outbound_cmds` float, 
  `is_host_login` tinyint, 
  `is_guest_login` tinyint, 
  `count` float, 
  `srv_count` float, 
  `serror_rate` float, 
  `srv_serror_rate` float, 
  `rerror_rate` float, 
  `srv_rerror_rate` float, 
  `same_srv_rate` float, 
  `diff_srv_rate` float, 
  `srv_diff_host_rate` float, 
  `dst_host_count` float, 
  `dst_host_srv_count` float, 
  `dst_host_same_srv_rate` float, 
  `dst_host_diff_srv_rate` float, 
  `dst_host_same_src_port_rate` float, 
  `dst_host_srv_diff_host_rate` float, 
  `dst_host_serror_rate` float, 
  `dst_host_srv_serror_rate` float, 
  `dst_host_rerror_rate` float, 
  `dst_host_srv_rerror_rate` float, 
  `label` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/kdd.db/training10p'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='false', 
  'numFiles'='0', 
  'numRows'='-1', 
  'rawDataSize'='-1', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1488870667')
;
CREATE TABLE `usecenter_account_day_result`(
  `msisdn` string, 
  `userid` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/usecenter_account_day_result'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='45', 
  'numRows'='66315544', 
  'rawDataSize'='1445307213', 
  'totalSize'='1511622757', 
  'transient_lastDdlTime'='1516691273')
;
CREATE TABLE `usecenter_data_day_result`(
  `msisdn` string, 
  `userid` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/usecenter_data_day_result'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='50', 
  'numRows'='51489878', 
  'rawDataSize'='1126825296', 
  'totalSize'='1178315174', 
  'transient_lastDdlTime'='1516689979')
;
CREATE TABLE `usecenter_integral_day_1`(
  `userid` string, 
  `creditsysid` string, 
  `credit` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/usecenter_integral_day_1'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1516692232')
;
CREATE TABLE `usecenter_integral_day_result`(
  `userid` string, 
  `userlevel` bigint, 
  `viplevel` bigint)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/usecenter_integral_day_result'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1516692281')
;
CREATE TABLE `usecenter_integral_day_result1`(
  `userid` string, 
  `userlevel` int, 
  `viplevel` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/usecenter_integral_day_result1'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1516692252')
;
CREATE TABLE `usecenter_result_result`(
  `msisdn` string, 
  `userlevel` double, 
  `viplevel` double)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/usecenter_result_result'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1516692475')
;
CREATE TABLE `usecenter_result_result1`(
  `msisdn` string, 
  `userlevel` bigint, 
  `viplevel` bigint)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/usecenter_result_result1'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='9', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1516692443')
;
CREATE TABLE `usercenter_login_explict`(
  `msisdn` string, 
  `usercenter_login_explict` bigint)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/usercenter_login_explict'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='692', 
  'numRows'='680783', 
  'rawDataSize'='8866340', 
  'totalSize'='9547123', 
  'transient_lastDdlTime'='1516695229')
;
CREATE TABLE `usercenter_login_tmp`(
  `registertime` string, 
  `accountname` string, 
  `logintype` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/usercenter_login_tmp'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1009', 
  'numRows'='5203848402', 
  'rawDataSize'='171726997266', 
  'totalSize'='176930845668', 
  'transient_lastDdlTime'='1516695166')
;
CREATE TABLE `vgop_credit_score`(
  `msisdn` string, 
  `credit_score` double, 
  `credit_rank` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/vgop_credit_score'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='95', 
  'numRows'='1154517211', 
  'rawDataSize'='28737212305', 
  'totalSize'='29891729516', 
  'transient_lastDdlTime'='1516994163')
;


CREATE TABLE `vt_trade`(
  `trade_no` decimal(18,0), 
  `trade_no_sfx` char(5), 
  `trade_date` date, 
  `trade_time` int, 
  `trade_time_dec` decimal(8,7), 
  `order_no` decimal(18,0), 
  `trade_price` decimal(18,5), 
  `trade_amt` decimal(18,5), 
  `trade_vol` decimal(18,3), 
  `order_vol` decimal(18,3), 
  `order_exec_vol` decimal(18,3), 
  `rem_peak_vol` decimal(18,3), 
  `sec_code` char(6), 
  `pbu_id` char(5), 
  `acct_id` char(10), 
  `trade_dir` char(1), 
  `order_prtfil_code` char(1), 
  `tran_type` char(3), 
  `trade_type` char(1), 
  `proc_type` char(1), 
  `order_type` char(2), 
  `stat_pbu_id` char(5), 
  `credit_type` char(1))
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/vt_trade'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1504862826')
;
CREATE TABLE `vt_trade_patch`(
  `trade_no` decimal(18,0), 
  `trade_no_sfx` char(5), 
  `trade_date` date, 
  `trade_time` int, 
  `trade_time_dec` decimal(8,7), 
  `order_no` decimal(18,0), 
  `trade_price` decimal(18,5), 
  `trade_amt` decimal(18,5), 
  `trade_vol` decimal(18,3), 
  `order_vol` decimal(18,3), 
  `order_exec_vol` decimal(18,3), 
  `rem_peak_vol` decimal(18,3), 
  `sec_code` char(6), 
  `pbu_id` char(5), 
  `acct_id` char(10), 
  `trade_dir` char(1), 
  `order_prtfil_code` char(1), 
  `tran_type` char(3), 
  `trade_type` char(1), 
  `proc_type` char(1), 
  `order_type` char(2), 
  `stat_pbu_id` char(5), 
  `credit_type` char(1))
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/vt_trade_patch'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1504862847')
;

CREATE EXTERNAL TABLE `yiqi_credit_score`(
  `msisdn` string, 
  `label_id` string, 
  `label_score` double, 
  `label_degree` double)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/yiqi_credit_score'
TBLPROPERTIES (
  'transient_lastDdlTime'='1473064266')
;
CREATE TABLE `yiqi_score`(
  `msisdn` string, 
  `sub_total_score` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://ns/data/mgwh/akita/hive/mgwh_akita_ods/yiqi_score'
TBLPROPERTIES (
  'transient_lastDdlTime'='1473071868')
;
